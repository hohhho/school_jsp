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
		Object obj = session.getAttribute("x");
		int x = (int)obj;
		System.out.println("01 : " + x);
	
		obj = session.getAttribute("y");
		int y = (int)obj;
		System.out.println("02 : " + y);
	%>
	
	<h2>다음 페이지2</h2>
	x = <%= x %>, y = <%= y %> <br>
	
	
</body>
</html>





