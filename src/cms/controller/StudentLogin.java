package cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cms.db.Admin;
import cms.db.Student;
import cms.db.Teacher;
import cms.model.AdminDao;
import cms.model.StudentDao;
import cms.model.TeacherDao;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/cms.controller.StudentLogin")
public class StudentLogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Student student = new Student();
		student.setEmail(request.getParameter("email"));
		student.setPassword(request.getParameter("password"));
		boolean status = StudentDao.validate(student);
		if(status == true)
		{
			HttpSession session = request.getSession();
			session.setAttribute("email", student.getEmail());
			response.sendRedirect("studentBody.jsp");
		}
		else{
			response.sendRedirect("studentLogin.jsp?msg=Login fails..");
		}
	}

}
