package cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import java.io.PrintWriter;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cms.db.StudentLeave;

import cms.model.StudentLeaveDao;

@WebServlet("/cms.controller.StudentLeaveApplication")
public class StudentLeaveApplication extends HttpServlet 
{
	private ServletFileUpload uploader = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String regn = request.getParameter("regn");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone= request.getParameter("phone");
		String subject= request.getParameter("subject");
		String branch = request.getParameter("branch");
		String fromdate= request.getParameter("fromdate");
		String todate = request.getParameter("todate");
		String description = request.getParameter("message");
		String purpose = request.getParameter("subject");
		
		StudentLeave s=new StudentLeave();
		s.setRegn(regn);
		s.setName(name);
		s.setEmail(email);
		s.setPhone(phone);
		s.setBranch(branch);
		s.setStart_date(fromdate);
		s.setEnd_date(todate);
		s.setDescription(description);
		s.setPurpose(purpose);
		
		out.write("</body></html>");
		int status=StudentLeaveDao.leaveApplied(s);
		if(status>0)
		{
			
			response.sendRedirect("studentBody.jsp?msg=done");
			
		}
		else
			response.sendRedirect("studentLeaveApplication.jsp?msg=Something Error");
		
	}

}
