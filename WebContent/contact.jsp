<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.addresh{
float: left;
height: 600px;
width: 40%;
margin-bottom: 50px;
}
.contactform{
float: left;
height: 600px;
width: 59%;
margin-bottom: 50px;
}
</style>
</head>
<body>
<jsp:include page="mainHeader.jsp"></jsp:include>
<div class="addresh">
<center ><h2 style="color: #f8c71d;">CONTACT ADDRESS</h2></center>

<p style="padding-left: 30px;color: black;font-size: 16px;"><b>Postal Address</b><br>
Ghanashyam Hemalata Institute of Technology Management<br>
Rasananda Jena Vihar<br>
Bhuan,Chaitana(P.O)<br>
Puri -2 Orissa.India</p>
<p style="padding-left: 30px;color: black;font-size: 16px;"><b>Telephone No.:</b><br>
Principal: 06752 - 246612<br>
College(EPBAX): 06752-246613<br>
<br>
<b>Admission : </b><br>
9438622311,9437523300,7377023746,8895299283<br>
Management: 06752-246627<br>
<br>
<b>FAX No.:</b><br>
06752-246786<br><br>

<b>E-mail.:</b><br>
ghitm@hotmail.com<br><br>
<b>Website:</b><br>
www.ghitmpuri.org
</p>
</div>
<div class="contactform">
<center ><h2 style="color: #f8c71d;">CONTACT FORM</h2></center>
<form action="cms.controller.Contact">
<table>
	<tr><td style="padding-left:100px;"><input style="font-size: 15px; height: 30px;width: 300px;" type="text" name="name" placeholder="Name" ></td><td style="padding-left: 10px;"><input style="font-size: 15px;height: 30px;width: 300px;" type="email" name="email" placeholder="Email" ></td></tr>
	<tr><th><br><br></th></tr>
	<tr><td style="padding-left:100px;"><input style="font-size: 15px;height: 30px;width: 300px;" type="text" name="subject" placeholder="Subject" ></td><td style="padding-left: 10px;"><input style="font-size: 15px;height: 30px;width: 300px;" type="number" name="mobile" placeholder="Mobile No." ></td></tr>
	<tr><th><br><br></th></tr>
	<tr><td style="padding-left:100px;" colspan="2"><textarea rows="7" cols="90" name="message" style="font-size: 15px;height: 150px;width: 625px;" placeholder="Message..."></textarea></td>
	<tr><th><br><br></th></tr>
	<tr><td></td><td><input type="submit" value="Submit" style="float: right; "></td></tr>

</table>
</form>
</div>
<center ><h2 style="color: #f8c71d;">CONTACT MAP</h2></center>
<jsp:include page="map.jsp"></jsp:include>
<jsp:include page="mainFooter.jsp"></jsp:include>
</body>
</html>