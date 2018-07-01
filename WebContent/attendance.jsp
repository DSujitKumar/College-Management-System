<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.main-contentPage{
	background-color: rgba(1, 1, 2, 0.9);
	border :5px solid #7f7874;
		border-radius: 20px;
		height: 400px;
		width: 70%;
		position: absolute;
		left: 15%;
		top:30%;

}
.main-contentPage h3{
	color: white;
	font-size:30px;
	margin-left: 42%;
	
}
.blue    { background-color: #3b8ec2;position: absolute; }
.blue select    { color: #fff; }
.semi-square {
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
}
.styled-select {
   background: url(http://i62.tinypic.com/15xvbd5.png) no-repeat 96% 0;
   background-color:#3b8ec2;
   height: 29px;
   overflow: hidden;
   width: 240px;
   
}
.styled-select select {
   background: transparent;
   border: none;
   color:black;
   font-size: 20px;
   height: 29px;
   font-weight:bold;
   padding: 5px; /* If you add too much padding here, the options won't show in IE */
   width: 240px;
}

.styled-select.slate {
   background: url(http://i62.tinypic.com/2e3ybe1.jpg) no-repeat right center;
   height: 34px;
   width: 150px;
}

.styled-select.slate select {
   border: 1px solid #ccc;
   font-size: 16px;
   height: 34px;
   width: 268px;
}
.yinp{
	background-color: #3b8ec2;
	font-size: 20px;
   height: 29px;
   font-weight:bold;
   border-radius: 20px;
   color: black;
	border: 2px solid black;
	position: absolute;
	top: 40%;
	left: 20%;
	width: 150px;
	border-radius: 20px;
	padding-left: 20px;
   

}

input::placeholder {
		color: black;
		margin-left: 10px;
		}
.submit{
	height: 30px;
	width: 150px;
	position: absolute;
	top: 80%;
	right: 10%;
	font-size: 16px;
	background-color: #3b8ec2;
	
}
.submit:hover{
	cursor: pointer;
}
</style>
</head>
<body>
<%
		String email =  (String) session.getAttribute("email"); 
		if(email == null)
			response.sendRedirect("teacherLogin.jsp");
	%>
<jsp:include page="teacherHeader.jsp"></jsp:include>
<div style="height:400px ; width: 100%; ">
<div class="main-contentPage">
<h3>Select the Date</h3>
<form action="cms.controller.attendance" method="post">
<input class="yinp" name="year" type="text" placeholder="Enter Year" required></input>
<div class="styled-select blue semi-square" style="position: absolute; left: 20%; top: 60%;">
  <select name="date" >
    <option>Select Date</option>
    <option value="one">1</option>
    <option value="two">2</option>
    <option value="three">3</option>
    <option value="four">4</option>
    <option value="five">5</option>
    <option value="six">6</option>
    <option value="seven">7</option>
    <option value="eight">8</option>
    <option value="nine">9</option>
    <option value="ten">10</option>
    <option value="eleven">11</option>
    <option value="twelve">12</option>
    <option value="thirteen">13</option>
    <option value="fourteen">14</option>
    <option value="fifteen">15</option>
    <option value="sixteen">16</option>
    <option value="seventeen">17</option>
    <option value="eighteen">18</option>
    <option value="nineteen">19</option>
    <option value="twenty">20</option>
    <option value="twentyone">21</option>
    <option value="twentytwo">22</option>
    <option value="twentythree">23</option>
    <option value="twentyfour">24</option>
    <option value="twentyfive">25</option>
    <option value="twentysix">26</option>
    <option value="twentyseven">27</option>
    <option value="twentyeight">28</option>
    <option value="twentynine">29</option>
    <option value="thirty">30</option>
    <option value="thirtyone">31</option>
    
  </select>
</div>

<div class="styled-select blue semi-square" style="position: absolute; right: 20%; top: 40%;">
  <select name="month">
    <option>Select month</option>
    <option>JANUARY</option>
    <option>FEBRUARY</option>
    <option>MARCH</option>
    <option>APRIL</option>
    <option>MEY</option>
    <option>JUNE</option>
    <option>JULY</option>
    <option>AUGUST</option>
    <option>SEPTEMBER</option>
    <option>OCTOBER</option>
    <option>NOVEMBER</option>
    <option>DECEMBER</option>
 </select>
</div>
<div class="styled-select blue semi-square" style="position: absolute; right: 20%; top: 60%;">
  <select name="branch">
    <option>Select Branch</option>
    <option>CSE</option>
    <option>ME</option>
    <option>CIVIL</option>
    <option>ECE</option>
    <option>EEE</option>
 </select>
</div>
<input type="submit" value="Take Attendance" class="submit"></input>
</form>
</div>
</div>
<jsp:include page="mainFooter.jsp"></jsp:include>

</body>
</html>