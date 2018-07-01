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
import cms.db.TeacherLeave;
import cms.model.StudentLeaveDao;
import cms.model.TeacherLeaveDao;

@WebServlet("/cms.controller.TeacherLeaveApplication")
public class TeacherLeaveApplication extends HttpServlet 
{
	private ServletFileUpload uploader = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone= request.getParameter("phone");
		String subject= request.getParameter("subject");
		String department = request.getParameter("department");
		String fromdate= request.getParameter("fromdate");
		String todate = request.getParameter("todate");
		String description = request.getParameter("message");
		String purpose = request.getParameter("subject");
		
		System.out.println(id+"-------------"+name);
		TeacherLeave t=new TeacherLeave();
		t.setId(id);
		t.setName(name);
		t.setEmail(email);
		t.setPhone(phone);
		t.setDepartment(department);
		t.setStart_date(fromdate);
		t.setEnd_date(todate);
		t.setDescription(description);
		t.setPurpose(purpose);
		System.out.println(id+"....................");
		int status=TeacherLeaveDao.leaveApplied(t);
		if(status>0)
		{
			
			response.sendRedirect("teacherBody.jsp?msg=done");
			
		}
		else
			response.sendRedirect("teacherLeaveApplication.jsp?msg=Something Error");
		
	}

}
