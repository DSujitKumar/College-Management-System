package cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cms.db.Admin;
import cms.db.Teacher;
import cms.model.AdminDao;
import cms.model.TeacherDao;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/cms.controller.TeacherLogin")
public class TeacherLogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Teacher teacher = new Teacher();
		teacher.setEmail(request.getParameter("email"));
		teacher.setPassword(request.getParameter("password"));
		boolean status = TeacherDao.validate(teacher);
		if(status == true)
		{
			HttpSession session = request.getSession();
			session.setAttribute("email", teacher.getEmail());
			response.sendRedirect("teacherBody.jsp");
		}
		else{
			response.sendRedirect("teacherLogin.jsp?msg=Login fails..");
		}
	}

}
