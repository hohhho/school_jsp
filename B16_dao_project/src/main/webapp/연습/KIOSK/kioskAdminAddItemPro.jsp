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
	
	int number = Integer.parseInt(request.getParameter("number"));
	String name = request.getParameter("name");
	int price = Integer.parseInt(request.getParameter("price"));
	int count = Integer.parseInt(request.getParameter("count"));
	
	int insertState = MenuDAO.instance.addNewItem(number, name, price, count);
	
%>
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
		<%if(insertState == 1){ %>
		<h2>추가 성공!</h2>
		<%} else{%>
		<h2>추가 실패..</h2>
		<%} %>
	</div>
</body>
</html>