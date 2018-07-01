package cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cms.db.Admin;
import cms.model.AdminDao;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/cms.controller.AdminLogin")
public class AdminLogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Admin admin = new Admin();
		admin.setEmail(request.getParameter("email"));
		admin.setPassword(request.getParameter("password"));
		boolean status = AdminDao.validate(admin);
		if(status == true)
		{
			HttpSession session = request.getSession();
			session.setAttribute("email", admin.getEmail());
			response.sendRedirect("add.jsp");
		}
		else{
			response.sendRedirect("adminLogin.jsp?msg=Login fails..");
		}
	}

}
