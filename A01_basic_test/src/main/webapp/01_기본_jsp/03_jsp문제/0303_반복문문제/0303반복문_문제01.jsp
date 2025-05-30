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
			반복문을 사용하여 1부터 10까지 숫자를 출력하되,
			3보다 작거나 7보다 큰 경우에는 숫자와 그 숫자의 세배를 출력합니다.
			단, if문을 사용할 때 else는 사용하지 않습니다.
		*/
	
		/*
			[출력예시]
			1 3
			2 6
			3 3
			4 4
			5 5
			6 6
			7 7
			8 24
			9 27
			10 30	
		*/
	%>
	
	<% for(int i=1; i<=10; i++) { %>
		<% boolean check = 7 < i || i < 3; %>
		<% if(check) { %>
			<%= i + " " + i*3 %> <br>
		<% } %>
		<% if(!check) { %>
			<%= i + " " + i %> <br>
		<% } %>
	<% } %>

</body>
</html>