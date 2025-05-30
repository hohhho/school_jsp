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
		String[] strList = {"qwer", "abcd", "hello"};
		int[] numList = {87, 21, 75};
		
		session.setAttribute("strList",strList);
		session.setAttribute("numList",numList);
	%>
	
	<a href="sessionArrayPro.jsp">다음 페이지</a>
</body>
</html>