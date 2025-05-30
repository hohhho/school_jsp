<%@page import="kiosk_연습.OrderDAO"%>
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
	int targetNum = (int)session.getAttribute("targetNum");
	int orderCount = Integer.parseInt(request.getParameter("orderCount"));

	int state = OrderDAO.instance.orderMenu(targetNum, orderCount);
%>
	
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
		<%if(state == 1){ %>
			<h2>주문 성공!</h2>
		<%} else{%>
			<h2>주문 실패..</h2>
		<%} %>
	</div>
</body>
</html>