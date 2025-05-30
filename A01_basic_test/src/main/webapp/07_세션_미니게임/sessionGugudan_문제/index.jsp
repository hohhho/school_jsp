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
		int gameCount = 0;
		int scoreCount = 0;
		
		session.setAttribute("gameCount",gameCount);
		session.setAttribute("scoreCount", scoreCount);
		
	%>
	
	<div align="center">
		<h2>구구단 게임</h2>
		<h3>5문제를 맞추면 게임 종료</h3>
		<a href="gugudan.jsp">게임 시작</a>
	</div>
</body>
</html>