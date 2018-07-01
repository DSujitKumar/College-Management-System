<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.mainbody{
height: 300px;
width: 98%;
}

.loginform{


height: 210px;
width :600px;
border-radius :30px;
border-top: 60px solid #348bed;
border-bottom: 60px solid #2d4560;
border-left: 6px solid #348bed;
border-right: 6px solid #348bed;

}
#lform {
	margin-top: 50px;
	font-size: 27px;
	color: black;	
}
input {
	margin-bottom:10px;
	margin-left:30px;
	padding-left:10px;
	font-size: 20px;
}
#btn{
background-color: #7277e8;
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
<jsp:include page="mainHeader.jsp"></jsp:include>
<div class="mainbody">
	<center><div class="loginform">
	<form action="cms.controller.ChangeAdminPassword" method="post" id="lform">
		<table>
			<tr><th style="padding-top: 2px; text-align: left;">Old Password :-</th><td><input type="password" name="oldpassword" placeholder="Old Password"></td></tr>
			<tr><th style="padding-top: 2px; text-align: left;">New Password :-</th><td><input type="password" name="newpassword" placeholder="New Password"></td></tr>
			<tr><th style="padding-top: 2px; text-align: left;">Conform Password :-</th><td><input type="password" name="conformpassword" placeholder="Conform Password"></td></tr>
			
			<tr><th></th><th><input type="submit"  value="Submit" id="btn"><input type="reset"  value="reset" id="btn"></th></tr>
		</table>
	</form>
	</div></center>
</div>

<jsp:include page="mainFooter.jsp"></jsp:include>

</body>
</html>