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
		int x = 10;
		int y = 20;
		
		session.setAttribute("x",x);
		session.setAttribute("y",y);
	%>
	
	<a href="sessionPro1.jsp">다음 페이지1</a>
</body>
</html>