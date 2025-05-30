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
	int targetNum = Integer.parseInt(request.getParameter("targetNum"));

	int deleteState = MenuDAO.instance.deleteOneItem(targetNum);
	
%>
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
		<%if(deleteState == 1){ %>
		<h2>삭제 성공!!</h2>
		<%} else{%>
		<h2>삭제 실패..</h2>
		<%} %>
	</div>
</body>
</html>