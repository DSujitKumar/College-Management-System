package cms.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cms.db.Admin;
import cms.db.Student;
import cms.db.Teacher;
import cms.model.StudentDao;
import cms.model.TeacherDao;

@WebServlet("/cms.controller.ChangeStudentPassword")
public class ChangeStudentPassword extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter  out = response.getWriter();
		response.setContentType("text/html");
		
		String  OldPassword=request.getParameter("oldpassword");
		String  NewPassword=request.getParameter("newpassword");
		System.out.println(OldPassword);
		System.out.println(NewPassword);
		Student ad=new Student();
		ad.setPassword(OldPassword);
		ad.setNewPassword(NewPassword);
		
		int status= StudentDao.changePassword(ad);
		if(status>0)
		{
			response.sendRedirect("studentBody.jsp?msg=done");
		}
		else
			response.sendRedirect("changeAdminPassword.jsp?msg=Invalid Email/pass");
		
		
	}

}
