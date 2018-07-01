<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.mainbody{
height: 400px;
width: 98%;
}
.image{
float:right;
margin-right:30px;
margin-top:30px;
height: 350px;
width :400px;
}
.loginform{

margin-left:100px;
float:left;
height: 220px;
width :600px;
border-radius :30px;
border-top: 60px solid #a34168;
border-bottom: 60px solid #552236;
border-left: 6px solid #a34168;
border-right: 6px solid #a34168;

}
#lform {
	margin-top: 50px;
	font-size: 27px;
	color: black;	
}
input {
	margin-bottom:5px;
	margin-left:30px;
	padding-left:10px;
	font-size: 20px;
}
#btn{
background-color: #fb8869;
-webkit-transition-duration: 0.4s;
box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
font-weight: bold;

}
#btn:hover{
cursor: pointer;
box-shadow: none;
}
</style>
</head>
<body>

	<%
		String email =  (String) session.getAttribute("email"); 
		if(email != null)
			response.sendRedirect("studentBody.jsp");
	%>
<jsp:include page="mainHeader.jsp"></jsp:include>
<div class="mainbody">
	<div class="image">
	<img alt="admin" src="images/newimages/student.png">
	</div>
	<div class="loginform">
	<center>
	<%
		String msg = request.getParameter("msg");
		if(msg != null)
			out.println ("<h3>"+msg+"</h3>");
	%>
	<form action="cms.controller.StudentLogin" method="post" id="lform">
		<table>
			<tr><th style="padding-top: 2px; text-align: left;">Email :-</th><td><input type="email" name="email" placeholder="abc@gmail.com"></td></tr>
			<tr><th style="padding-top: 2px; text-align: left;">Password :-</th><td><input type="password" name="password" placeholder="password"></td></tr>
			<tr><th style="padding-top: 2px; text-align: left; color: #3a709e;"><a href="studentForgogtPassword2.jsp">Forgot Password</a></th><th><input type="submit"  value="Login" id="btn"><input type="reset" value="Reset" id="btn" ></th></tr>
		</table>
	</form></center>
	</div>
</div>
<jsp:include page="mainFooter.jsp"></jsp:include>

</body>
</html>