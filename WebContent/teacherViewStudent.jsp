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
  				<th>REGD NO</th>
  				<th style="min-width:250px;">NAME</th>
  				<th style="min-width:250px;">FATHRE'S NAME</th>
  				<th style="min-width:250px;">MOTHER'S NAME</th>
  				<th>EMAIL</th>
  				<th>RELIGION</th>
  				<th>PHONE</th>
  				<th>ADDRESS</th>
  				<th>GENDER</th>
  				<th>MARITAL STATUS</th>
  				<th>QUALIFICATION</th>
  				<th>BRACNH</th>
  				<th>PHOTO</th>
  				
  			</tr>
  		</thead>
  		<tbody>
  			<%
  				
  				ArrayList<Student> all = StudentDao.fetch();
  				Iterator<Student> it = all.iterator();
  				while(it.hasNext()){
  					Student tr = it.next();
  					%>
  						<tr>
  							<td><%=tr.getRegn()%></td>
  							<td><%=tr.getName() %></td>
  							<td><%=tr.getFname() %></td>
  							<td><%=tr.getMname() %></td>
  							<td><%=tr.getEmail() %></td>
  							<td><%=tr.getReligion() %></td>
  								<td><%=tr.getPhone() %></td>
  							
  							<td><%=tr.getAddress() %></td>
  						    <td><%=tr.getGender() %></td>
  							<td><%=tr.getMaritalstatus() %></td>
  							<td><%=tr.getQualification() %></td>
  							<td><%=tr.getBranch() %></td>
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