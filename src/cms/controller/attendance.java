package cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class attendance
 */
@WebServlet("/cms.controller.attendance")
public class attendance extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String year=request.getParameter("year");
			String month=request.getParameter("month");
			String branch= request.getParameter("branch");
			
			String date = request.getParameter("date");
			
			/*String date = null;
			String one="1";
			if(val.equals(one))
				date="one";
			
			String two="2";
			if(val.equals(two))
				date="two";
			
			String three="3";
			if(val.equals(three))
				date="three";
			
			String four="4";
			if(val.equals(four))
				date="four";
			
			String five="5";
			if(val.equals(five))
				date="five";
			
			String six="6";
			if(val.equals(six))
				date="six";
			
			String seven="7";
			if(val.equals(seven))
				date="seven";
			
			String eight="";
			if(val.equals(eight))
				date="eight";
			
			String nine="9";
			if(val.equals(nine))
				date="nine";
			
			String ten="10";
			if(val.equals(ten))
				date="ten";
			
			String eleven="11";
			if(val.equals(eleven))
				date="eleven";
			
			String twelve="12";
			if(val.equals(twelve))
				date="twelve";
			
			String thirteen="13";
			if(val.equals(thirteen))
				date="thirteen";
			
			String fourteen="14";
			if(val.equals(fourteen))
				date="fourteen";
			String fifteen="15";
			if(val.equals(fifteen))
				date="fifteen";
			String sixteen="16";
			if(val.equals(sixteen))
				date="sixteen";
			String seventeen="17";
			if(val.equals(seventeen))
				date="seventeen";
			String eighteen="18";
			if(val.equals(eighteen))
				date="eighteen";
			String nineteen="19";
			if(val.equals(nineteen))
				date="nineteen";
			String twenty="20";
			if(val.equals(twenty))
				date="twenty";
			String twentyone="21";
			if(val.equals(twentyone))
				date="twentyone";
			String twentytwo="22";
			if(val.equals(twentytwo))
				date="twentytwo";
			String twentythree="23";
			if(val.equals(twentythree))
				date="twentythree";
			String twentyfour="24";
			if(val.equals(twentyfour))
				date="twentyfour";
			String twentyfive="25";
			if(val.equals(twentyfive))
				date="twentyfive";
			String twentysix="26";
			if(val.equals(twentysix))
				date="twentysix";
			String twentyseven="27";
			if(val.equals(twentyseven))
				date="twentyseven";
			
			String twentyeight="28";
			if(val.equals(twentyeight))
				date="twentyeight";
			String twentynine="29";
			if(val.equals(twentynine))
				date="twentynine";
			String thirty="30";
			if(val.equals(thirty))
				date="thirty";
			String thirtyone="31";
			if(val.equals(thirtyone))
				date="thirtyone";
			*/
			HttpSession session = request.getSession();
			session.setAttribute("branch", branch);
			session.setAttribute("year", year);
			session.setAttribute("date", date);
			session.setAttribute("month", month);
			response.sendRedirect("takeAttendance.jsp");
			
			System.out.println(session.getAttribute("year"));
			System.out.println(session.getAttribute("date"));
			System.out.println(session.getAttribute("branch"));
			System.out.println(session.getAttribute("month"));
	}

}
