<%@ page import="java.util.Random" %>
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
		Random rand = new Random();
		int com = rand.nextInt(100)+1;
		
		session.setAttribute("com",com);
		session.setAttribute("cheat",0);
	%>
	
	<div align="center">
		<h2>업다운 게임</h2>
		<h3>1~100 사이의 랜덤 숫자 맞추기</h3>
		<a href="updownGame.jsp">게임시작</a>
	</div>
</body>
</html>