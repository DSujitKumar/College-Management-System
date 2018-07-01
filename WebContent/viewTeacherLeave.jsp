<%@page import="java.util.Iterator"%>
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
	<jsp:include page="adminHeader.jsp"></jsp:include>

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
  				
  				ArrayList<TeacherLeave> all = TeacherLeaveDao.fetch();
  				Iterator<TeacherLeave> it = all.iterator();
  				while(it.hasNext()){
  					TeacherLeave tr = it.next();
  					String id = tr.getId();
					String name = tr.getName() ;
					String email=	tr.getEmail() ;
					String phone = tr.getPhone() ;
					String department= tr.getDepartment();
					String purpose = tr.getPurpose();
					String start_date=tr.getStart_date();
					String end_date = tr.getEnd_date();
					String description = tr.getDescription();
					
  					%>
  						<tr>
  							
  							
  							<td><%=id%></td>
  							<td><%=name%></td>
  							<td><%=email%></td>
  							<td><%=phone%></td>
  							<td><%=department %></td>
  							<td><%=purpose %></td>
  							<td><%=start_date %></td>
  							<td><%=end_date%></td>
  							<td><%=description%></td>
  							
  							<td><a href="cms.controller.ApproveTeacherLeave?id=<%=id%>&start_date=<%=start_date%>&end_date=<%=end_date %>">Approve</a>
  								<br>
  								<a href="#">Not Approve</a>
  							</td>
  						</tr>
  					<%
  				}
  			%>
  		</tbody>
  </table>
	
</body>
</html>
<jsp:include page="mainFooter.jsp"></jsp:include>