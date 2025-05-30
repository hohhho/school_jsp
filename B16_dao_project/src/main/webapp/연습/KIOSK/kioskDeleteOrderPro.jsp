<%@page import="kiosk_연습.OrderDAO"%>
<%@page import="kiosk_연습.Order" %>
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
	int deleteCount = OrderDAO.instance.deleteAllOrder();
%>
	
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
		<%if(deleteCount == 1){ %>
		<h2>초기화 완료!</h2>
		<%} else{%>
		<h2>초기화 실패..</h2>
		<%} %>
	</div>
</body>
</html>