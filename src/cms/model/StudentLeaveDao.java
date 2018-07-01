package cms.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import cms.db.Provider;
import cms.db.Student;
import cms.db.StudentLeave;
import cms.service.SendPassword;

public class StudentLeaveDao 
{

	public static int leaveApplied(StudentLeave s) 
	{
		int status = 0 ;
		
		try
		{
			Connection con=Provider.getConnection();
			String sql="insert into StudentLeave (regn,name,email,phone,branch,start_date,end_date,Description,status,purpose) values (?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1,s.getRegn());
			pst.setString(2,s.getName());
			pst.setString(3,s.getEmail());
			pst.setString(4, s.getPhone());
			pst.setString(5, s.getBranch());
			pst.setString(6, s.getStart_date());
			pst.setString(7, s.getEnd_date());
			pst.setString(8, s.getDescription());
			pst.setString(9, s.getStatus());
			pst.setString(10, s.getPurpose());
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
	
	
	public static ArrayList<StudentLeave> fetch() {
	    ArrayList<StudentLeave> all = new ArrayList<StudentLeave>();
	    String sql = "select * from StudentLeave";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      ResultSet rs = pst.executeQuery();
	      while(rs.next()){
	    	  StudentLeave st = new StudentLeave();
	       st.setRegn(rs.getString(1));
	       st.setName(rs.getString(2));
	       st.setEmail(rs.getString(3));
		   st.setPhone(rs.getString(4));
	       st.setBranch(rs.getString(5));
	       st.setPurpose(rs.getString(6));
	       st.setStart_date(rs.getString(7));
	       st.setEnd_date(rs.getString(8));
	       st.setDescription(rs.getString(9));
	       st.setStatus(rs.getString(10));
	       all.add(st);
	      }
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	    return all;
	  }
	public static ArrayList<StudentLeave> fetchStudentDetails(StudentLeave s) {
		ArrayList<StudentLeave> all = new ArrayList<StudentLeave>();
		String sql = "select * from studentleave where email=?";
    try {
      Connection con = Provider.getConnection();
      PreparedStatement pst = con.prepareStatement(sql);
      pst.setString(1, s.getEmail());
      ResultSet rs = pst.executeQuery();
      while(rs.next()){
    	  StudentLeave  st = new StudentLeave();
    	  st.setRegn(rs.getString(1));
	       st.setName(rs.getString(2));
	       st.setEmail(rs.getString(3));
		   st.setPhone(rs.getString(4));
	       st.setBranch(rs.getString(5));
	       st.setPurpose(rs.getString(6));
	       st.setStart_date(rs.getString(7));
	       st.setEnd_date(rs.getString(8));
	       st.setDescription(rs.getString(9));
	       st.setStatus(rs.getString(10));
	       System.out.println(rs.getString(10));
       all.add(st);
      }
    } catch (Exception e) {
      // TODO: handle exception
      e.printStackTrace();
    }
		return all;
		
	}


	public static void approve(StudentLeave t) {
		
		String sql = "update studentleave set status='1' where regn=? and start_date=? and end_date=?";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      System.out.println(t+"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	      System.out.println(t.getRegn()+"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	      pst.setString(1, t.getRegn());
	      pst.setString(2, t.getStart_date());
	      pst.setString(3, t.getEnd_date());
	      pst.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	}
}
