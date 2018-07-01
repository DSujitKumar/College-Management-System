package cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cms.db.StudentLeave;
import cms.db.TeacherLeave;

/**
 * Servlet implementation class ApproveStudentLeave
 */
@WebServlet("/cms.controller.ApproveStudentLeave")
public class ApproveStudentLeave extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String regn = request.getParameter("regn");
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		
		System.out.println(regn +"\t"+start_date+"\t"+end_date);
		StudentLeave t = new StudentLeave();
		t.setRegn(regn);
		t.setStart_date(start_date);
		t.setEnd_date(end_date);
		
		
		cms.model.StudentLeaveDao.approve(t);
		response.sendRedirect("viewStudentLeave.jsp");
	}

}
