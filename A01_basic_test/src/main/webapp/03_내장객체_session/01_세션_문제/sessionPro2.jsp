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
		Object obj1 = session.getAttribute("x");
		int x = (int)obj1;
		
		Object obj2 = session.getAttribute("y");
		int y = (int)obj2;
	%>
	
	<h2>다음 페이지2</h2>
	x = <%=x %>, y = <%=y %>
	<br>
	
	<a href="session.jsp">처음 페이지</a>
</body>
</html>