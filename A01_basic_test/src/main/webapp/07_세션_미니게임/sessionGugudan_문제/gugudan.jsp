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
		Object obj = session.getAttribute("gameCount");
		int gameCount = (int)obj;
		gameCount++;
		session.setAttribute("gameCount", gameCount);
		
		obj = session.getAttribute("scoreCount");
		int scoreCount = (int)obj;
		
		Random rand = new Random();
		int x = rand.nextInt(8)+2; // 2 ~ 9
		int y = rand.nextInt(9)+1; // 1 ~ 9
		
		session.setAttribute("x", x);
		session.setAttribute("y", y);
		
	%>
	
	<div align="center">
		<form action="gugudanPro.jsp">
			<h2>구구단 게임</h2>
			<h3>5문제를 맞추면 게임 종료</h3>
			<h3><%=gameCount %>번 문제</h3>
			<h4>현재 정답 수: <%=scoreCount %></h4>
			<h3><%=x %> * <%=y %> = ?</h3>
			<input type="text" name="my">
			<input type="submit">
		</form>
	</div>
</body>
</html>