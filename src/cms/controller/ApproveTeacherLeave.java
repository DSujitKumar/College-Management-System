package cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cms.db.TeacherLeave;

/**
 * Servlet implementation class ApproveStudentLeave
 */
@WebServlet("/cms.controller.ApproveTeacherLeave")
public class ApproveTeacherLeave extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		
		System.out.println(id +"\t"+start_date+"\t"+end_date);
		TeacherLeave t = new TeacherLeave();
		t.setId(id);
		t.setStart_date(start_date);
		t.setEnd_date(end_date);
		
		cms.model.TeacherLeaveDao.approve(t);
		response.sendRedirect("viewTeacherLeave.jsp");
	}

}
