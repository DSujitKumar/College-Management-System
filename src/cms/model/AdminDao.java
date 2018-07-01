package cms.model;
import java.sql.*;
import cms.db.Admin;
import cms.db.Provider;

public class AdminDao 
{
	public static boolean validate(Admin admin) 
	{
			boolean status = false;
			String sql = "select * from admin where email = ? and password = ?";
			try 
			{
				Connection con = Provider.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);
				pst .setString(1, admin.getEmail());
				pst.setString(2, admin.getPassword());
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
	public static int changePassword(Admin ad) 
	{
		int status= 0 ;
		try 
		{
			Connection con = Provider.getConnection();	
			String sql = "select * from Admin where password=?";
			String sql1 = "update Admin SET password=? where password = ?";
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
	public static String getPassword(Admin u) {
		String password=null;
		try {
			Connection con= Provider.getConnection();
			String sql="select password from admin where email=?";
			PreparedStatement pst=con.prepareStatement(sql);
			System.out.println(u.getEmail());
			pst.setString(1, u.getEmail());
			ResultSet rs=pst.executeQuery();
			if (rs.next()) 
			{
				password=rs.getString(1);
				System.out.println("----------------------------------------"+password);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return password;
	}
	public static boolean checkEmail(Admin u) {
		boolean status = false;
		String sql = "select * from admin where email = ?";
		try 
		{
			Connection con = Provider.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst .setString(1, u.getEmail());
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
	
}
