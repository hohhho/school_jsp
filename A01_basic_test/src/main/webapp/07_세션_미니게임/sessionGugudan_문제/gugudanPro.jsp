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
		
		obj = session.getAttribute("x");
		int x = (int)obj;
		
		obj = session.getAttribute("y");
		int y = (int)obj;
		
		String str = request.getParameter("my");
		int my = Integer.parseInt(str);
		
		int answer = x * y;
		int state = 0; // 1은 정답, 2는 오답, 3은 게임종료
		
		if(my == answer){
			scoreCount++;
			state = 1;
		}else{
			state = 2;
		}
		
		if(scoreCount == 5){
			state = 3;
		}
		
		session.setAttribute("scoreCount", scoreCount);
	%>
	
	<div align="center">
		<%if(state == 1){ %>
			<h3>정답!</h3>
			<button onclick="window.location.href='gugudan.jsp'">뒤로가기</button>
		<%} else if(state == 2){%>
			<h3>오답!</h3>
			<button onclick="window.location.href='gugudan.jsp'">뒤로가기</button>
		<%} else{%>
			<h3>게임종료</h3>
			<h3>5번 정답까지 걸린 게임 수 : <%=gameCount %></h3>
			<button onclick="window.location.href='index.jsp'">처음으로</button>
		<%} %>
		
	</div>
</body>
</html>