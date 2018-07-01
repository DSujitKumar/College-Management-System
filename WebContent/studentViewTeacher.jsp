
<%@page import="cms.db.Teacher"%>
<%@page import="cms.model.TeacherDao"%>
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
<title>View Teacher</title>
<style type="text/css">
#form{
border-top:30px solid #7a32e6;
border-bottom:30px solid #2e1653;
border-collapse: collapse;
font-size: 20px;
background-color: #f1cfe4;
color: black;
min-width: 100%;
}
#form th{
min-width :50px;
max-width:400px;
border: 2px solid green;
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
			response.sendRedirect("studentLogin.jsp");
	%>
<jsp:include page="studentHeader.jsp"></jsp:include>
<table id="form" style="font-family: Sylfaen;" border="2px;" >
  		<thead>
  			<tr>
  				<th>ID</th>
  				<th style="min-width:250px;">NAME</th>
  				<th>EMAIL</th>
  				<th>PHONE</th>
  				<th>ADDRESS</th>
  				<th>GENDER</th>
  				
  				<th>DEPARTMENT</th>
  				<th>JOB TITLE</th>
  				
  				<th>PHOTO</th>
  				
  		
  			</tr>
  		</thead>
  		<tbody>
  			<%
  				
  				ArrayList<Teacher> all = TeacherDao.fetch();
  				Iterator<Teacher> it = all.iterator();
  				while(it.hasNext()){
  					Teacher tr = it.next();
  					%>
  						<tr>
  							<td><%=tr.getId()%></td>
  							<td><%=tr.getName() %></td>
  							<td><%=tr.getEmail() %></td>
  							<td><%=tr.getPhone() %></td>
  							
  							<td><%=tr.getAddress() %></td>
  						<td><%=tr.getGender() %></td>
  							
  							<td><%=tr.getDepartment() %></td>
  							<td><%=tr.getJobtitle() %></td>
  							
  							<td><%=tr.getPhoto() %></td>
  							
  						</tr>
  					<%
  				}
  			%>
  		</tbody>
  </table>
	
</body>
</html>
<jsp:include page="mainFooter.jsp"></jsp:include>