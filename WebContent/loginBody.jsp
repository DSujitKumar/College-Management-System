<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<style type="text/css">
	body{
			background-size: 100% 100%;
			font-size: 45px;

		}
		.content{
			margin-left: 8%;
			margin-bottom: 10px;
			
		}
		.content a{
			float: left;
			
		}

		
		.admin{
		float :left;
		margin-left :70px;
			background :url(images/newimages/admin.png)no-repeat center center;
			height: 350px;
			width: 350px;
			
		}
		.teacher{
			float :left;
			background :url(images/newimages/teacher.png)no-repeat center center;
			height: 350px;
			width: 350px;
			
		}
		.student{
			float :left;
			margin-left :60px;
			background :url(images/newimages/student.png)no-repeat center center;
			height: 350px;
			width: 300px;
			
		}
	</style>

</head>
<body>
	<a href="adminLogin.jsp"><div class="admin">
	</div></a>
	<a href="teacherLogin.jsp"><div class="teacher">
	</div></a>
	<a href="studentLogin.jsp"><div class="student">	
</div>

</body>
</html>