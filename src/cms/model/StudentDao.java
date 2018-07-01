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

import cms.db.Provider;
import cms.db.Student;
import cms.db.StudentLeave;
import cms.db.Teacher;
import cms.service.SendPassword;

public class StudentDao 
{
	public static Student fetchStudentDetails(Student s) {
		Student st = null;
		String sql = "select regn,name,phone,branch from student where email=?";
    try {
      Connection con = Provider.getConnection();
      PreparedStatement pst = con.prepareStatement(sql);
      pst.setString(1, s.getEmail());
      ResultSet rs = pst.executeQuery();
      if(rs.next()){
    	  st = new Student();
    	  st.setEmail(s.getEmail());
       st.setRegn(rs.getString(1));
       st.setName(rs.getString(2));
      st.setPhone(rs.getString(3));
      st.setBranch(rs.getString(4));
       
      }
    } catch (Exception e) {
      // TODO: handle exception
      e.printStackTrace();
    }
		return st;
		
	}
	public static int regStudent(Student t) {
		int status=0;
		try
		{
			Connection con=Provider.getConnection();
			String sql="update student set fname=?,mname=?,religion=?,phone=?,address=?,gender=?,maritalstatus=?,qualification=?,branch=?,photo=?,message=?  where email=?";
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1,t.getFname());
			pst.setString(2,t.getMname());
			pst.setString(3,t.getReligion());
			pst.setString(4,t.getPhone());
			pst.setString(5,t.getAddress());
			pst.setString(6,t.getGender());
			pst.setString(7,t.getMaritalstatus());
			pst.setString(8, t.getQualification());
			pst.setString(9, t.getBranch());
			pst.setString(10,t.getPhoto());
			pst.setString(11, t.getMessage());
			pst.setString(12, t.getEmail());
			
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

	public static int addStudent(Student s) 
	{
		int status=0;
		SendPassword p=new SendPassword();
		String otp1=p.sendPassword1(s);
		
		try
		{
			Connection con=Provider.getConnection();
			String sql="insert into Student (regn,name,email,password) values (?,?,?,?)";
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1,s.getRegn());
			pst.setString(3,s.getEmail());
			pst.setString(2,s.getName());
			pst.setString(4, otp1);
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
	
	public static boolean validate(Student student) 
	{
			boolean status = false;
			String sql = "select * from Student where email = ? and password = ?";
			try 
			{
				Connection con = Provider.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);
				pst .setString(1, student.getEmail());
				pst.setString(2, student.getPassword());
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
	public static int changePassword(Student ad) 
	{
		int status= 0 ;
		try 
		{
			Connection con = Provider.getConnection();	
			String sql = "select * from Student where password=?";
			String sql1 = "update Student SET password=? where password = ?";
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
	public static ArrayList<Student> fetch() {
	    ArrayList<Student> all = new ArrayList<Student>();
	    String sql = "select * from student";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      ResultSet rs = pst.executeQuery();
	      while(rs.next()){
	        Student st = new Student();
	       st.setRegn(rs.getString(1));
	       st.setName(rs.getString(2));
	       st.setFname(rs.getString(3));
	       st.setMname(rs.getString(4));
	       st.setEmail(rs.getString(5));
	       st.setReligion(rs.getString(6));
		   st.setPhone(rs.getString(8));
		   st.setAddress(rs.getString(9));
	       st.setGender(rs.getString(10));
	       st.setMaritalstatus(rs.getString(11));
	       st.setQualification(rs.getString(12));
	       st.setBranch(rs.getString(13));
	       st.setPhoto(rs.getString(14));
	       all.add(st);
	      }
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	    return all;
	  }
	public static void delete(String regdno) {
	    // TODO Auto-generated method stub
	    String sql = "delete from student where regn=?";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      pst.setString(1, regdno);
	      pst.execute();
	      
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	  }
	
	public static ArrayList<Student> fetchStudent(Student s) {
	    ArrayList<Student> all = new ArrayList<Student>();
	    String sql = "select * from student where email=?";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      pst.setString(1, s.getEmail());
	      ResultSet rs = pst.executeQuery();
	      if(rs.next()){
	        Student st = new Student();
	       st.setRegn(rs.getString(1));
	       st.setName(rs.getString(2));
	       st.setFname(rs.getString(3));
	       st.setMname(rs.getString(4));
	       st.setEmail(rs.getString(5));
	       st.setReligion(rs.getString(6));
		   st.setPhone(rs.getString(8));
		   st.setAddress(rs.getString(9));
	       st.setGender(rs.getString(10));
	       st.setMaritalstatus(rs.getString(11));
	       st.setQualification(rs.getString(12));
	       st.setBranch(rs.getString(13));
	       st.setPhoto(rs.getString(14));
	       all.add(st);
	      }
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	    return all;
	  }
	public static ArrayList<Student> fetchattendance(Student s) {
	    ArrayList<Student> all = new ArrayList<Student>();
	    String month=s.getMonth();
	    System.out.println(month);
	    String d= s.getDate();
	    String sql = "select regn,name,branch,"+d+" from "+month+" where branch=? order by regn";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      pst.setString(1, s.getBranch());
	      ResultSet rs = pst.executeQuery();
	      while(rs.next()){
	        Student st = new Student();
	       st.setRegn(rs.getString(1));
	       st.setName(rs.getString(2));
	       st.setBranch(rs.getString(3));
	       st.setDate(rs.getString(4));
	       all.add(st);
	      }
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	    return all;
	  }
public static void attendance(Student t) {
		String month=t.getMonth();
		String date=t.getDate();
		String sql = "update "+month+" set "+date+"='1' where regn=?";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      System.out.println(t+"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	      System.out.println(t.getRegn()+"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	      pst.setString(1, t.getRegn());
	      
	      pst.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	}
}
