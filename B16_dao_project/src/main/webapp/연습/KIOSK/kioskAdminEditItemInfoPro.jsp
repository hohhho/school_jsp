<%@page import="kiosk_연습.MenuDAO"%>
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
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	int price = Integer.parseInt(request.getParameter("price"));
	int count = Integer.parseInt(request.getParameter("count"));
	
	int targetNum = (int)session.getAttribute("targetNum");
	
	int state = MenuDAO.instance.editItemInfo(targetNum, name, price, count);
%>
</body>

	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
		<%if(state == 1){ %>
		<h2>수정 완료!!</h2>
		
		<%} else{%>
		<h2>수정 실패..</h2>
		<%} %>
	</div>
</html>