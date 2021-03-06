<%@page import="java.util.Iterator"%>
<%@page import="cms.model.TeacherDao"%>

<%@page import="cms.model.TeacherLeaveDao"%>
<%@page import="cms.db.TeacherLeave"%>
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
border-top:30px solid #0fc4f8;
border-bottom:30px solid #207790;
border-collapse: collapse;
font-size: 20px;
background-color: #c1ebeb;
color: black;
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

	<%
		String email =  (String) session.getAttribute("email"); 
		if(email == null)
			response.sendRedirect("teacherLogin.jsp");
	%>
	<jsp:include page="teacherHeader.jsp"></jsp:include>

<table id="form" style="font-family: Sylfaen;" border="2px;">
  		<thead>
  			<tr>
  				<th>ID</th>
  				<th style="min-width:250px;">NAME</th>
  				<th>EMAIL</th>
  				<th>PHONE</th>
  				<th>DEPARTMENT</th>
  				<th>PURPOSE</th>
  				<th>START DATE</th>
  				<th>END DATE</th>
  				<th>DESCRIPTION</th>
  				<th>STATUS</th>
  				
  			</tr>
  		</thead>
  		<tbody>
  			
		<%
			TeacherLeave s = new TeacherLeave();
			s.setEmail((String)session.getAttribute("email"));
			
			ArrayList<TeacherLeave> all = TeacherLeaveDao.fetchTeacherDetails(s);
				Iterator<TeacherLeave> it = all.iterator();
				while(it.hasNext()){
					TeacherLeave tr = it.next();
					%>
  			
  						<tr>
  							<td><%=tr.getId()%></td>
  							<td><%=tr.getName() %></td>
  							<td><%=tr.getEmail() %></td>
  							<td><%=tr.getPhone() %></td>
  							<td><%=tr.getDepartment() %></td>
  							<td><%=tr.getPurpose() %></td>
  							<td><%=tr.getStart_date() %></td>
  							<td><%=tr.getEnd_date()%></td>
  							<td><%=tr.getDescription()%></td>
  							<% String sta= tr.getStatus();
  							String a=null;	
  							System.out.println(sta);
  							if(sta!=null)
  									 a="Approved";
  							else
  								a="Not Approved";
  								
  							%>
  							<td><%=a%></td>
  							
  						</tr>
  						<%
  				}
  			%>
  					
  		</tbody>
  </table>
	
</body>
</html>
<jsp:include page="mainFooter.jsp"></jsp:include>