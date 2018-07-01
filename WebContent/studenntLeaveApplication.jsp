<%@page import="cms.model.StudentDao"%>
<%@page import="cms.db.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

.loginform{

height: 700px;
width :900px;
border-radius :30px;
border-top: 60px solid #c54130;
border-bottom: 60px solid #7f3228;
border-left: 6px solid #c54130;
border-right: 6px solid #c54130;

}
#lform {
	margin-top: 50px;
	font-size: 27px;
	color: black;	
}
input {
	margin-bottom:10px;
	
	padding-left:20px;
	font-size: 25px;
}
select {
	margin-bottom:10px;
	
	padding-left:10px;
	font-size: 25px;
}
#btn{
background-color: #fb8869;
-webkit-transition-duration: 0.4s;
box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
font-weight: bold;

}
#btn:hover{
cursor: pointer;
box-shadow: none;
}
#imgg{
float :left;
height:300px;
width: 300px; 
margin-top:70px;
margin-left:50px;
border-radius: 50%;
background :url(images/newimages/addteacher.png)no-repeat center center;
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
	<center><div class="loginform" style="background-color: #dcd1e1;">
	<%
		String msg = request.getParameter("msg");
		if(msg != null)
			out.println ("<h3>"+msg+"</h3>");
	%>
	<form action="cms.controller.StudentLeaveApplication" method="post" id="lform">
	
		<%
			Student s = new Student();
			s.setEmail((String)session.getAttribute("email"));
			s = StudentDao.fetchStudentDetails(s);
		%>
		<table style="font-family: Sylfaen;">
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Regn </th><td style="padding-left: 50px;"><input type="text" name="regn" placeholder="Registration Number" value="<%=s.getRegn()%>" readonly="readonly" ></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Name </th><td style="padding-left: 50px;"><input type="text" name="name" placeholder="Name" value="<%=s.getName()%>" readonly="readonly"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Email </th><td style="padding-left: 50px;"><input type="email" name="email" placeholder="abc@gmail.com" value="<%=s.getEmail()%>" readonly="readonly"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Phone</th><td style="padding-left: 50px;"><input type="number" name="phone" placeholder="Phone" value="<%=s.getPhone()%>" readonly="readonly"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Branch </th><td style="padding-left: 50px;"><input type="text" name="branch" placeholder="Branch" value="<%=s.getBranch()%>" readonly="readonly"></td></tr>
			
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Subject </th><td style="padding-left: 50px;"><input type="text" name="subject" placeholder="Subject"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">From </th><td style="padding-left: 50px;"><input type="date" name="fromdate" placeholder="From Date"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">To </th><td style="padding-left: 50px;"><input type="date" name="todate" placeholder="To Date"></td></tr>
			
    
			<tr>
			<td colspan="2" style="padding-top: 15px;padding-bottom :15px; text-align: left;">
			<textarea rows="7" cols="66" name="message" ></textarea>
			</td>
			</tr>
			<tr><th></th><th><input type="submit"  value="Submit" id="btn"><input type="reset"  value="Reset" id="btn"></th></tr>
		</table>
	</form>
	</div></center>
</div>
<jsp:include page="mainFooter.jsp"></jsp:include>
</body>
</html>