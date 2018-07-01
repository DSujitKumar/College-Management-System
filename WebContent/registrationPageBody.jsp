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
.mainbody{
min-height: 390px;
width: 98%;
padding-bottom: 700px;
}

.loginform{

float :left;
margin-left:300px;
height: 850px;
width :700px;
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
<div class="mainbody">
	<center><div class="loginform" style="background-color: #dcd1e1;">
	<form action="cms.controller.RegStudent" method="post" id="lform" enctype="multipart/form-data">
		<table style="font-family: Sylfaen;">
		<%
			Student s = new Student();
			s.setEmail((String)session.getAttribute("email"));
			s = StudentDao.fetchStudentDetails(s);
		%>
		
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Regn </th><td style="padding-left: 50px;"><input type="text" name="regn" placeholder="Registration Number" value="<%=s.getRegn()%>" readonly="readonly"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Name </th><td style="padding-left: 50px;"><input type="text" name="name" placeholder="Name" value="<%=s.getName()%>" readonly="readonly"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Email </th><td style="padding-left: 50px;"><input type="email" name="email" placeholder="abc@gmail.com" value="<%=s.getEmail()%>"readonly="readonly"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Phone </th><td style="padding-left: 50px;"><input type="number" name="phone" placeholder="Phone"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Gender </th><td style="padding-left: 50px;"><input type="radio" name="gender" value="male"> Male <input type="radio" name="gender" value="female"> Female <input type="radio" name="gender" value="other"> Other</td></tr>
			<tr><th style="padding-top: 10px; text-align: left; padding-left: 20px;">Marital Status</th><td style="padding-left: 50px; padding-top: 5px;"><input type="radio" name="maritalstatus" value="single"> Single <input type="radio" name="maritalstatus" value="married"> Married</td></tr>
			<tr><th style="padding-top: 10px; text-align: left; padding-left: 20px;">Father' Name</th><td style="padding-left: 50px;"><input type="text" name="fname" placeholder="Fathers Name"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Mother's Name </th><td style="padding-left: 50px;"><input type="text" name="mname" placeholder="Mothers Name"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Religion </th><td style="padding-left: 50px;"><input type="text" name="religion" placeholder="Religion"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px; min-width: 200px;">Branch</th><td style="padding-left: 50px;"><select name="branch">
			<option value="CSE">CSE</option>
    <option value="MECHANICAL">MECHANICAL</option>
    <option value="ELECTRICAL">ELECTRICAL</option>
    <option value="ELECTRONICS">ELECTRONICS</option>
</select></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Qualification </th><td style="padding-left: 50px;"><input type="text" name="qualification" placeholder="Qualification"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Address </th><td style="padding-left: 50px;"><input type="text" name="address" placeholder="Address"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Photo </th><td style="padding-left: 30px;"><input type="file" id="edit-pass" name="fileName" size="60" maxlength="128"></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Message</th><td></td></tr>
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

</body>7
</html>
