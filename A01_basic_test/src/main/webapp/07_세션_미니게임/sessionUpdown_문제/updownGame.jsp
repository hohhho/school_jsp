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
		int com = (int)session.getAttribute("com");
		int cheat = (int)session.getAttribute("cheat");
		
	%>
	
	<div align="center">
		<h2>업다운 게임</h2>
		<h3>1~100 사이의 랜덤 숫자 맞추기</h3>
		<%if(cheat == 0){ %>
			<button onclick="window.location.href='resultPro.jsp'">정답 확인</button>
			<br>
		<%} else{%>
			<%=com %>
		<%} %>
		<form action="updownGamePro.jsp">
			<input type="text" name="my">
			<input type="submit" value="전송">
		</form>
	</div>
</body>
</html>