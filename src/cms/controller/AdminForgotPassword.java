package cms.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cms.db.Admin;
import cms.model.AdminDao;
import cms.service.ResetPassword;

/**
 * Servlet implementation class AdminForgotPassword
 */
@WebServlet("/cms.controller.AdminForgotPassword")
public class AdminForgotPassword extends HttpServlet 
{
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
			
			String email=request.getParameter("email");
			Admin u=new Admin();
			u.setEmail(email);
			boolean status=AdminDao.checkEmail(u);
			if (status==true) {
				String password=AdminDao.getPassword(u);
				u.setPassword(password);
				System.out.println(u.getPassword()+"  ================================++++++++++++++");
				ResetPassword.sendPassword(u);
				response.sendRedirect("adminLogin.jsp?msg=passsword send successfully......");
		    }
			else
				response.sendRedirect("adminForgogtPassword.jsp?msg=Please Check the email");
		}
}
