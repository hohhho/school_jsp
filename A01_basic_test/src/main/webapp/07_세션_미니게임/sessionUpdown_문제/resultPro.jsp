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
		session.setAttribute("cheat", 1);
	%>
	
	<div align="center">
		<h3>정답: <%=com %></h3>
		<a href="updownGame.jsp">뒤로가기</a>
	</div>
	
	
</body>
</html>