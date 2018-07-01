package cms.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import cms.db.Admin;
import cms.db.Provider;
import cms.db.Student;
import cms.db.Teacher;
import cms.service.SendPassword;

public class TeacherDao {

	
	public static int addTeachr(Teacher t) {
		int status=0;
		SendPassword p=new SendPassword();
		String otp1=p.sendPassword1(t);
		
		try
		{
			Connection con=Provider.getConnection();
			String sql="insert into teacher(id,email,name,gender,department,address,maritalstatus,phone,joindate,photo,salary,specialization,qualification,jobtitle,message,password) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst= con.prepareStatement(sql);
			System.out.println(t.getJoindate()+"======================");
			pst.setString(1,t.getId());
			pst.setString(2,t.getEmail());
			pst.setString(3,t.getName());
			pst.setString(4,t.getGender());
			pst.setString(5,t.getDepartment());
			pst.setString(6,t.getAddress());
			pst.setString(7,t.getMaritalstatus());
			pst.setString(8, t.getPhone());
			pst.setString(9, t.getJoindate());
			pst.setString(10,t.getPhoto());
			pst.setString(11, t.getSalary());
			pst.setString(12, t.getSpecialization());
			pst.setString(13,t.getQualification());
			pst.setString(14, t.getJobtitle());
			pst.setString(15, t.getMessage());
			pst.setString(16, otp1);
			ResultSet rs=pst.executeQuery();
			if (rs.next()) 
			{
				System.out.println("done");
				status=1;
				
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}
	public static boolean validate(Teacher teacher) 
	{
			boolean status = false;
			String sql = "select * from teacher where email = ? and password = ?";
			try 
			{
				Connection con = Provider.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);
				pst .setString(1, teacher.getEmail());
				pst.setString(2, teacher.getPassword());
				ResultSet rs = pst.executeQuery();
				status = rs.next();
				//System.out.println(status);
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			return status;
	}
	public static int changePassword(Teacher ad) 
	{
		int status= 0 ;
		try 
		{
			Connection con = Provider.getConnection();	
			String sql = "select * from teacher where password=?";
			String sql1 = "update teacher SET password=? where password = ?";
			PreparedStatement pst = con.prepareStatement(sql);
			PreparedStatement pst1;
			System.out.println(ad.getPassword());
			pst.setString(1, ad.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{	
				System.out.println("password checked");
				pst1 = con.prepareStatement(sql1);
				
				System.out.println(ad.getNewPassword());
				System.out.println(ad.getPassword());
				
				pst1.setString(2, ad.getPassword());
				pst1.setString(1, ad.getNewPassword());
				int rs1 = pst1.executeUpdate();
				if (rs1>0) 
					status=1;
				System.out.println(status);
			
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}
	public static ArrayList<Teacher> fetch() {
	    ArrayList<Teacher> all = new ArrayList<Teacher>();
	    String sql = "select * from teacher";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      ResultSet rs = pst.executeQuery();
	      while(rs.next()){
	       Teacher t = new Teacher();
	       t.setId(rs.getString(1));
	       	t.setName(rs.getString(2));
	        t.setEmail(rs.getString(3));
	        t.setPhone(rs.getString(5));
		   t.setAddress(rs.getString(6));
	        t.setGender(rs.getString(7));
	        t.setMaritalstatus(rs.getString(8));
	        t.setQualification(rs.getString(9));
	        t.setSpecialization(rs.getString(10));
	        t.setDepartment(rs.getString(11));
	        t.setJobtitle(rs.getString(12));
	        t.setSalary(rs.getString(13));
	        t.setPhoto(rs.getString(14));
	        t.setJoindate(rs.getString(15));
	        all.add(t);
	      }
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	    return all;
	  }
	public static void delete(String id) {
	    // TODO Auto-generated method stub
	    String sql = "delete from teacher where id=?";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      pst.setString(1, id);
	      pst.execute();
	      
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	  }
	public static Teacher fetchTeacherDetails(Teacher t) {
		Teacher st = null;
		String sql = "select id,name,phone,department from teacher where email=?";
    try {
      Connection con = Provider.getConnection();
      PreparedStatement pst = con.prepareStatement(sql);
      pst.setString(1, t.getEmail());
      ResultSet rs = pst.executeQuery();
      if(rs.next()){
    	  st = new Teacher();
    	  st.setEmail(t.getEmail());
       st.setId(rs.getString(1));
       st.setName(rs.getString(2));
      st.setPhone(rs.getString(3));
      st.setDepartment(rs.getString(4));
       
      }
    } catch (Exception e) {
      // TODO: handle exception
      e.printStackTrace();
    }
		return st;
		
	}
	
	public static ArrayList<Teacher> fetchTeacher(Teacher tc) {
	    ArrayList<Teacher> all = new ArrayList<Teacher>();
	    String sql = "select * from teacher where email=?";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      pst.setString(1, tc.getEmail());
	      ResultSet rs = pst.executeQuery();
	      while(rs.next()){
	       Teacher t = new Teacher();
	       t.setId(rs.getString(1));
	       	t.setName(rs.getString(2));
	        t.setEmail(rs.getString(3));
	        t.setPhone(rs.getString(5));
		   t.setAddress(rs.getString(6));
	        t.setGender(rs.getString(7));
	        t.setMaritalstatus(rs.getString(8));
	        t.setQualification(rs.getString(9));
	        t.setSpecialization(rs.getString(10));
	        t.setDepartment(rs.getString(11));
	        t.setJobtitle(rs.getString(12));
	        t.setSalary(rs.getString(13));
	        t.setPhoto(rs.getString(14));
	        t.setJoindate(rs.getString(15));
	        all.add(t);
	      }
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	    return all;
	  }
}
