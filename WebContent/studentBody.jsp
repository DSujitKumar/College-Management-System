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
<title>Insert title here</title>
<style type="text/css">
.mainDiv{

height: 100px;
min-width: 49%;
float: left;
margin-left: 100px;
margin-bottom: 100px;
}
.fimage
{
	float:left;
	
}
.ftext{
	padding-top :20px;
	float: left;
	padding-left: 15px;
	
}
.sDetails{
		height: 220px; width: 93%;
		
		
		margin-bottom: 50px;
		margin-left: 50px;
		
}
.head{
height: 40px;
 width: 93%;
 background: #25063a;
 margin-left: 50px;
 color: white;
 border-radius: 50px;
 

}
</style>
</head>
<body>
<jsp:include page="studentHeader.jsp"></jsp:include>
<div class="head">
<center><p style="font-weight: bold; font-size: 30px; padding-top: 7px;">STUDENT INFORMATION</p></center>
</div>
<div class="sDetails">
	<%
			Student s = new Student();
			s.setEmail((String)session.getAttribute("email"));
			
			ArrayList<Student> all = StudentDao.fetchStudent(s);
				Iterator<Student> it = all.iterator();
				while(it.hasNext()){
					Student tr = it.next();
					%>
							<%
							String ph=tr.getPhone();
							if(ph==null)
							{
							%>
							<center><h2 style="padding-top: 100px;;">PLEASE REGISTER FOR MORE INFORMATION</h2></center>
							
							<%
							}
							else{
							%>
							<% 
  								String photo_name=tr.getPhoto();
  							
  								if(photo_name == null)
  								{
  							%>
  									<img src="profileimg/g.jpg" height="200px" style="border-radius: 50%; padding: 20px; float: left; padding-top: 50px;">
  							<%
  								}
  								else
  								{
  									String p1 = "profileimg\\";
  									String p2 = p1+tr.getPhoto();
  								
  							%>
 								<img src=<%=p2 %> height="200px" width="200px" style="border-radius: 50%; padding-left: 20px; float: left;"> 								
  							<%
  								}
  							%>
  							<div style="margin-left: 20px;  float:left;  height: 250px; width: 500px; overflow: hidden;"><p style="color: black; font-size: 25px; font-weight: bold; padding-top: 20px;" >Name :  <%=tr.getName() %>
  											<br><br>
  											Registration No :	<%=tr.getRegn()%><br><br>
  											Phone : <%=tr.getPhone() %><br>	<br>
  											Email : 	<%=tr.getEmail() %><br>	<br>
  											Gender : <%=tr.getGender() %><br>	<br>
  											Father's Name :<%=tr.getFname() %>
  											
  											</p>
							</div>
							<div style="  height: 250px; width: 400px; overflow: hidden; margin-top:30px; " >
								<p style="color: black; font-size: 25px; font-weight: bold; padding-top: 20px; padding-left: 20px;" >
											Qualification :  <%=tr.getQualification() %>
  											<br><br>
  											Branch :	<%=tr.getBranch()%><br><br>
  											Marital Status : <%=tr.getMaritalstatus() %><br>	<br>
  											Religion : 	<%=tr.getReligion() %><br>	<br>
  											Address :<br>
  											<%=tr.getAddress() %>
  											
  											</p>
							
							</div>
			<%
				}}
			%>
</div>
<div class="head" style="margin-bottom: 50px;"></div>

<center>
<table style="width: 100%;">
<tr><td>
		<a href="studenntLeaveApplication.jsp"  >
			<div class="mainDiv" style="margin-left: 200px;">
				<div class="fimage">
					<img alt="Leave Application" src="images/newimages/leave.png" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">Leave Application </p>
					<p style="font-size: 15px; font-weight: bold; color: black;"> Apply for leave for any purpose...</p>
				</div>
			</div>
		</a>
	</td>
	<td>
		<a href="studentViewTeacher.jsp">
			<div class="mainDiv">
				<div class="fimage">
					<img alt="View Teacher" src="images/newimages/viewteacher.png" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">View Teacher </p>
					<p style="font-size: 15px; font-weight: bold; color: black;">Show all the teachers..</p>
				</div>
			</div>
		</a>
	</td> 
</tr>
<tr>
<td>
		<a href="sExamSch.jsp">
			<div class="mainDiv" style="margin-left: 200px;">
				<div class="fimage">
					<img alt="Exam Schedule" src="images/newimages/exam.jpg" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">Exam Schedule </p>
					<p style="font-size: 15px; font-weight: bold; color: black;">See all the exam schedules..</p>
				</div>
			</div>
		</a>
	</td> 
<td>
		<a href="viewResult.jsp">
			<div class="mainDiv">
				<div class="fimage">
					<img alt="View Result" src="images/newimages/viewresult.png" height="90px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">View Result </p>
					<p style="font-size: 15px; font-weight: bold; color: black;"> Place for seeing the performance in exam...</p>
				</div>
			</div>
		</a>
	</td>
	
</tr>
<tr>
<td>
		<a href="studentFeedback.jsp">
			<div class="mainDiv" style="margin-left: 200px;">
				<div class="fimage">
					<img alt="Students's Feedback" src="images/newimages/feedback1.png" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">Student's Feedback</p>
					<p style="font-size: 15px; font-weight: bold; color: black;">Write something on your teacher..</p>
				</div>
			</div>
		</a>
	</td> 
<td>
		<a href="studentViewStudentLeave.jsp"  >
			<div class="mainDiv">
				<div class="fimage">
					<img alt="Leave Application" src="images/newimages/leave.png" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">View Leave Status </p>
					<p style="font-size: 15px; font-weight: bold; color: black;"> View Leave is accepted or not</p>
				</div>
			</div>
		</a>
	</td>
	
</tr>
</table>
</center>
<jsp:include page="mainFooter.jsp"></jsp:include>
	
</body>
</html>