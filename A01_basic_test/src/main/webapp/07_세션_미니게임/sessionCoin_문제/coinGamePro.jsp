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
		
		String str = request.getParameter("my");
		int my = Integer.parseInt(str);
		
		str = request.getParameter("coin");
		int coin = Integer.parseInt(str);
		
		gameCount++;
		session.setAttribute("gameCount", gameCount);
		
		int state = 0; // 정답은 1, 오답은 2, 게임오버는 3
		if(coin % 2 == 1 && my == 1){
			state = 1;
			scoreCount++;
		}else if(coin % 2 == 0 && my == 2){
			state = 1;
			scoreCount++;
		}else{
			state = 2;
		}
		
		if(gameCount == 5){
			state = 3;
		}
		
		session.setAttribute("scoreCount", scoreCount);
	%>
	
	<div align="center">
		<%if(state == 1){ %>
			<h2>정답!</h2>
			<button onclick="window.location.href='coinGame.jsp'">뒤로가기</button>
		<%}else if(state == 2){ %>
			<h2>오답!</h2>
			<button onclick="window.location.href='coinGame.jsp'">뒤로가기</button>
		<%}else{ %>
			<h2>게임 종료</h2>
			<h3>점수: <%=scoreCount %></h3>
			<button onclick="window.location.href='index.jsp'">처음으로</button>
		<%} %>
	</div>
</body>
</html>