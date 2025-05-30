<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM TEST - atmLogout</title>
</head>
<body>
	<%
		session.setAttribute("log", null);
		
		response.sendRedirect("atmMain.jsp");
	%>
</body>
</html>