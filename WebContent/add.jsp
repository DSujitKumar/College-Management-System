<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String email =  (String) session.getAttribute("email"); 
		if(email == null)
			response.sendRedirect("adminLogin.jsp");
	%>
	
<jsp:include page="adminHeader.jsp"></jsp:include>
<jsp:include page="addbody.jsp"></jsp:include>
<jsp:include page="mainFooter.jsp"></jsp:include>

</body>
</html>