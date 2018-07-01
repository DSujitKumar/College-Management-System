<%@page import="java.util.Iterator"%>
<%@page import="cms.model.StudentDao"%>

<%@page import="cms.db.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Student</title>
<style type="text/css">
#form{
border-top:10px solid #0fc4f8;
border-bottom:30px solid #207790;
border-collapse: collapse;
font-size: 20px;
background-color: rgba(20,100,22,0.5);
color: black;
margin-left: 25%;
border-top-left-radius: 10px;
}
#form th{
min-width :50px;
max-width:400px;
border: 2px solid #048313;
padding-top :5px;
	padding-left :10px;
	padding-right :10px;
	padding-bottom :5px;
}
#form td {
	text-align :center;
	border: 2px solid blue;
	padding-top :5px;
	padding-left :10px;
	padding-right :10px;
	padding-bottom :5px;
	font-size: 17px;
}

</style>
</head>
<body>
	<jsp:include page="teacherHeader.jsp"></jsp:include>

<table id="form" style="font-family: Sylfaen;" border="2px;">
  		<thead>
  			<tr>
  				<th>REGD NO</th>
  				<th style="min-width:250px;">NAME</th>
  				
  				<th>BRANCH</th>
  				
  				<th>Attendance</th>
  				
  			</tr>
  		</thead>
  		<tbody>
  			<%
  			Student s = new Student();
  			s.setYear((String)session.getAttribute("year"));
  			s.setMonth((String)session.getAttribute("month"));
  			s.setDate((String)session.getAttribute("date"));
  			s.setBranch((String)session.getAttribute("branch"));
			
  				
  				ArrayList<Student> all = StudentDao.fetchattendance(s);
  				Iterator<Student> it = all.iterator();
  				while(it.hasNext()){
  					Student tr = it.next();
  					String regn=tr.getRegn();
  				
  					System.out.println ("+++_-----+"+regn);
  					
  					%>
  						<tr>
  							<td><%=regn%></td>
  							<td><%=tr.getName() %></td>
  							<td><%=tr.getBranch() %></td>

  							<%
  							String ap=tr.getDate();
  							System.out.println(ap +"-----S");
  							if(ap!=null)
  							{
  							%>
  							<td>Present</a>
  							<% }
  							else 
  							{
  							%>
  							<td><a href="cms.controller.TakeAttendance?regn=<%=regn%>">Present</a>
  								<br>
  								<a href="#">Absent</a>
  							</td>
  							<%} %>
  						</tr>
  						<% } %>
  		</tbody>
  </table>
	
</body>
</html>
<jsp:include page="mainFooter.jsp"></jsp:include>