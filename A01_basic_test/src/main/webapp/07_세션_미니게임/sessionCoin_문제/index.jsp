<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		프로그램 내내 사용될 변수들은 index 파일에 미리 session 해 놓는다
	 --%>
	 
	 <%
	 	int gameCount = 0; //게임횟수
	 	int scoreCount = 0; // 점수
	 	
	 	session.setAttribute("gameCount",gameCount);
	 	session.setAttribute("scoreCount",scoreCount);
	 %>
	 
	 <div align="center">
	 	<h1>코인게임</h1>
	 	<h3>1~10 사이의 랜덤 숫자의 홀짝을 맞추는 게임(5번)</h3>
	 	
	 	<button onclick="window.location.href='coinGame.jsp'">시작하기</button>
	 </div>
</body>
</html>