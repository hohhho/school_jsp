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
		
		obj = session.getAttribute("scoreCount");
		int scoreCount = (int)obj;
		
		Random rand = new Random();
		int coin = rand.nextInt(10)+1;
		
	%>
	
	<div align="center">
		<h3>1~10 사이의 랜덤 숫자의 홀짝을 맞추는 게임(5번)</h3>
		<h3>지금까지 점수: <%=scoreCount %></h3>
		<h4>치트키: <%=coin %></h4>
		<button onclick="window.location.href='coinGamePro.jsp?my=1&coin=<%=coin%>'">홀</button>
		<button onclick="window.location.href='coinGamePro.jsp?my=2&coin=<%=coin%>'">짝</button>
	</div>
</body>
</html>