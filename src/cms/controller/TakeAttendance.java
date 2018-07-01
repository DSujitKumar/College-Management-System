package cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cms.db.Student;
import cms.db.StudentLeave;

/**
 * Servlet implementation class TakeAttendance
 */
@WebServlet("/cms.controller.TakeAttendance")
public class TakeAttendance extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String regn = request.getParameter("regn");
		HttpSession session = request.getSession();
		String year=(String) session.getAttribute("year");
		String month=(String) session.getAttribute("month");
		String date=(String) session.getAttribute("date");
		String branch=(String) session.getAttribute("branch");
	
		Student t = new Student();
		t.setRegn(regn);
		t.setMonth(month);
		t.setDate(date);
		System.out.println(t.getDate());
		cms.model.StudentDao.attendance(t);
		response.sendRedirect("takeAttendance.jsp");
	}

	
}
