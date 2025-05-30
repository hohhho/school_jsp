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
	
		int my = Integer.parseInt(request.getParameter("my"));
		
		int upDown = 0; // my>com은 1, my < com은 -1, my == com은 0
		
		if(my > com){
			upDown = 1;
		}else if(my < com){
			upDown = -1;
		}else{
			upDown = 0;
		}
	%>
	
	<div align="center">
		<%if(upDown == 1) {%>
			<h2>Down!</h2>
			<button onclick="window.location.href='updownGame.jsp'">뒤로가기</button>
		<%} else if(upDown == -1){%>
			<h2>Up!</h2>
			<button onclick="window.location.href='updownGame.jsp'">뒤로가기</button>
		<%} else{%>
			<h2>BingGo!</h2>
			<button onclick="window.location.href='index.jsp'">처음으로</button>
		<%} %>
	</div>
</body>
</html>