package cms.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import cms.db.Provider;
import cms.db.Student;
import cms.db.StudentLeave;
import cms.db.TeacherLeave;
import cms.service.SendPassword;

public class TeacherLeaveDao 
{

	public static int leaveApplied(TeacherLeave t) 
	{
		int status = 0 ;
		
		try
		{
			Connection con=Provider.getConnection();
			String sql="insert into TeacherLeave (id,name,email,phone,department,start_date,end_date,Description,status,purpose) values (?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1,t.getId());
			pst.setString(2,t.getName());
			pst.setString(3,t.getEmail());
			pst.setString(4, t.getPhone());
			pst.setString(5, t.getDepartment());
			pst.setString(6, t.getStart_date());
			pst.setString(7, t.getEnd_date());
			pst.setString(8, t.getDescription());
			pst.setString(9, t.getStatus());
			pst.setString(10, t.getPurpose());
			System.out.println(t.getId());
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
	
	
	public static ArrayList<TeacherLeave> fetch() {
	    ArrayList<TeacherLeave> all = new ArrayList<TeacherLeave>();
	    String sql = "select * from TeacherLeave";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      ResultSet rs = pst.executeQuery();
	      while(rs.next()){
	    	  TeacherLeave st = new TeacherLeave();
	       st.setId(rs.getString(1));
	       st.setName(rs.getString(2));
	       st.setEmail(rs.getString(3));
		   st.setPhone(rs.getString(4));
	       st.setDepartment(rs.getString(5));
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
	public static ArrayList<TeacherLeave> fetchTeacherDetails(TeacherLeave s) {
		ArrayList<TeacherLeave> all = new ArrayList<TeacherLeave>();
		String sql = "select * from teacherleave where email=?";
    try {
      Connection con = Provider.getConnection();
      PreparedStatement pst = con.prepareStatement(sql);
      pst.setString(1, s.getEmail());
      ResultSet rs = pst.executeQuery();
      while(rs.next()){
    	  TeacherLeave  st = new TeacherLeave();
    	  st.setId(rs.getString(1));
	       st.setName(rs.getString(2));
	       st.setEmail(rs.getString(3));
		   st.setPhone(rs.getString(4));
	       st.setDepartment(rs.getString(5));
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


	public static void approve(TeacherLeave t) {
		
		String sql = "update Teacherleave set status='1' where id=? and start_date=? and end_date=?";
	    try {
	      Connection con = Provider.getConnection();
	      PreparedStatement pst = con.prepareStatement(sql);
	      System.out.println(t.getId()+"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	      pst.setString(1, t.getId());
	      pst.setString(2, t.getStart_date());
	      pst.setString(3, t.getEnd_date());
	      pst.executeUpdate();
	      
	    } catch (Exception e) {
	      // TODO: handle exception
	      e.printStackTrace();
	    }
	    
		
	}
}
