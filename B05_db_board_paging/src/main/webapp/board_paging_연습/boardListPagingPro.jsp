<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		int nextPage = Integer.parseInt(request.getParameter("nextPage"));
	
		session.setAttribute("currentPage",nextPage);
	
		response.sendRedirect("boardListPaging.jsp");
	%>
</body>
</html>