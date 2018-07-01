<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.mainbody{
width: 98%;
padding-bottom: 400px;
}

.loginform{

float :left;
margin-left :70px;
height: 300px;
width :700px;
border-radius :30px;
border-top: 60px solid #b14ddd;
border-bottom: 60px solid #4a2e56;
border-left: 6px solid #b14ddd;
border-right: 6px solid #b14ddd;

}
#lform {
	margin-top: 50px;
	font-size: 27px;
	color: black;	
}
input {
	margin-bottom:10px;
	
	padding-left:20px;
	font-size: 20px;
}
select {
	margin-bottom:10px;
	
	padding-left:10px;
	font-size: 20px;
}
tr{
margin-right:50px;
}
#btn{
background-color: #812ea6;
-webkit-transition-duration: 0.4s;
box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
font-weight: bold;
margin-left: 20px;

}
#btn:hover{
cursor: pointer;
box-shadow: none;
}
#imgg{
float :right;
height:300px;
width: 300px; 
margin-top:70px;
margin-right:50px;
border-radius: 50%;
background :url(images/newimages/addstudent.png)no-repeat center center;
}
</style>
</head>
<body>

<div class="mainbody">
<a href="addstudent.jsp"><div id="imgg">
</div></a>
	<center><div class="loginform" style="background-color: #dcd1e1;">
	<%
		String msg = request.getParameter("msg");
		if(msg != null)
			out.println ("<h3>"+msg+"</h3>");
	%>
	<form action="cms.controller.AddStudent" method="post" id="lform">
		<table style="font-family: Sylfaen;">
			<tr><th style="padding-top: 5px; text-align: left;">Regn :-</th><td><input type="text" name="regn" placeholder="Registration Number "></td></tr>
			<tr><th style="padding-top: 5px; text-align: left;">Name :-</th><td><input type="text" name="name" placeholder="Name"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left;">Email :-</th><td><input type="email" name="email" placeholder="abc@gmail.com"></td></tr>
			<tr><th></th><th><input type="submit"  value="Add" id="btn"><input type="reset"  value="Reset" id="btn"></th></tr>
		</table>
	</form>
	</div></center>
</div>

</body>
</html>