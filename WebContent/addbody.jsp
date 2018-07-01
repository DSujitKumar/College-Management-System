<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<style type="text/css">
		.mainDiv{

			height: 100px;
			min-width: 49%;
			float: left;
			margin: 50px;
			}
		.con{
		height:600px;
		border-top: 60px solid #ffaf03;
		border-left: 20px solid #ffaf03;
		border-right: 20px solid #ffaf03;
		border-bottom: 60px solid #ff7a03;
		border-radius: 100px;
		}
	</style>

</head>
<body>
<center class="con">
	
<table style="width: 100%;">
<tr><td>
		<a href="addteacher.jsp"  >
			<div class="mainDiv" style="margin-left: 200px;">
				<div class="fimage">
					<img alt="Leave Application" src="images/newimages/addteacher.png" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">Add Teacher </p>
				</div>
			</div>
		</a>
	</td>
	<td>
		<a href="viewteacher.jsp">
			<div class="mainDiv">
				<div class="fimage">
					<img alt="View Teacher" src="images/newimages/viewteacher.png" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">View Teacher </p>
				</div>
			</div>
		</a>
	</td> 
</tr>
<tr>
<td>
		<a href="addstudent.jsp">
			<div class="mainDiv" style="margin-left: 200px;">
				<div class="fimage">
					<img alt="Exam Schedule" src="images/newimages/addstudent.png" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">Add Student </p>
				</div>
			</div>
		</a>
	</td> 
<td>
		<a href="viewstudent.jsp">
			<div class="mainDiv">
				<div class="fimage">
					<img alt="View Result" src="images/newimages/viewstudent.png" height="90px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">View Student </p>
					
				</div>
			</div>
		</a>
	</td>
	
</tr>
<tr>
<td>
		<a href="viewStudentLeave.jsp">
			<div class="mainDiv" style="margin-left: 200px;">
				<div class="fimage">
					<img alt="Students's Feedback" src="images/newimages/leave.png" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">View Student Leave</p>
					
				</div>
			</div>
		</a>
	</td> 
<td>
		<a href="viewTeacherLeave.jsp">
			<div class="mainDiv">
				<div class="fimage">
					<img alt="Students's Feedback" src="images/newimages/leave.png" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">View Teacher Leave</p>
					
				</div>
			</div>
		</a>
	</td>
	
</tr>
</table>
</center>
</body>
</html>