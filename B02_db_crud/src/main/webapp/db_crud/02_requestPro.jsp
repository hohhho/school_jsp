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
	 	String a = request.getParameter("str");
	 %>
	 
	<h1>이곳은 requestPro 입니다.</h1>
	<%=a %>
	
	
</body>
</html>