<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

.loginform{

width :80%;
border-radius :30px;
border-top: 60px solid #99f903;
border-bottom: 60px solid #648c24;
border-left: 6px solid #99f903;
border-right: 6px solid #99f903;

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
background-color: #99f903;
margin-left:20px;
margin-bottom:40px;
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
<jsp:include page="studentHeader.jsp"></jsp:include>
	<center><div class="loginform" style="background-color: #dcd1e1;">
	<%
		String msg = request.getParameter("msg");
		if(msg != null)
			out.println ("<h3>"+msg+"</h3>");
	%>
	<form action="cms.controller.ExamSchedule" method="post" id="lform" enctype="multipart/form-data">
		<table style="font-family: Sylfaen;">
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px;">Year </th><td style="padding-left: 50px;"><select name="year" id="year"></select> </td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px; min-width: 200px;">Branch</th><td style="padding-left: 50px;"><select name="branch">
					<option value="CSE">CSE</option>
		   			 <option value="MECHANICAL">MECHANICAL</option>
		    		<option value="ELECTRICAL">ELECTRICAL</option>
		    		<option value="ELECTRONICS">ELECTRONICS</option>
					</select></td></tr>
			<tr><th style="padding-top: 5px; text-align: left; padding-left: 20px; min-width: 200px;">Exam</th><td style="padding-left: 50px;"><select name="branch">
					<option value="firstinternal">First Internal</option>
		   			 <option value="secondinternal">Second Internal</option>
		    		<option value="firstsemester">First Semester</option>
		    		<option value="secondsemester">Second Semester</option>
					</select></td></tr>
			
			<tr><th></th><th><input type="submit"  value="Submit" id="btn"><input type="reset"  value="Reset" id="btn"></th></tr>
		</table>
	</form>
	</div></center>
</div>
	<script >
    	var start = 1980;
		var end = new Date().getFullYear();
		var options = "";
		for(var year = start ; year <=end; year++){
		  options += "<option>"+ year +"</option>";
		}
		document.getElementById("year").innerHTML = options;
    </script>
<jsp:include page="mainFooter.jsp"></jsp:include>
</body>
</html>