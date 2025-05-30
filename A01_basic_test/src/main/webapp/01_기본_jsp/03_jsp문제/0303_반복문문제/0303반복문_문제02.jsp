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
	/*
		[문제]
		반복문을 사용하여 28부터 17까지 거꾸로 출력하시오.
	*/
	
	/*
		[출력예시]
		28 27 26 25 24 23 22 21 20 19 18 17 
	*/
	%>
	
	<%for(int i = 28; i >= 17; i--){ %>
		<%=i %>
	<%} %>
</body>
</html>