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
			반복문의 경우 자바영역과 html 영역이 굉장이 복잡한 구조이기때문에 충분한연습이 필요하다.
		*/
	%>	

	<% int i = 1; %>
	
	<%	while(i <= 10){  %>
			<%= i %>
	<% 		i++;	%>
	
	<%	} %>
	
	<br>
	
</body>
</html>













