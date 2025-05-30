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
		Object obj2 = session.getAttribute("y");
		
		int x = (int)obj1;
		int y = (int)obj2;

	%>
	
	<h2>다음 페이지1</h2>
	x = <%=x %>, y = <%=y %><br>
	
	<a href="sessionPro2.jsp">다음 페이지2</a>
</body>
</html>