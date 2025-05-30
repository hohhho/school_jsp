<%@page import="kiosk_연습.MenuDAO"%>
<%@page import="kiosk_연습.Menu"%>
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
	session.setAttribute("targetNum", targetNum);
	
	Menu menu = MenuDAO.instance.getTargetMenuInfo(targetNum);
%>

	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
		<h2>상품 수정</h2>
		<form action="kioskAdminEditItemInfoPro.jsp" method="post">
			<table border="1">
				<tr>
					<td>상품이름</td>
					<td><input type="text" name="name" value="<%=menu.getName() %>"></td>
				</tr>
				
				<tr>
					<td>가격</td>
					<td><input type="number" name="price" value="<%=menu.getPrice() %>"></td>
				</tr>
				<tr>
					<td>수량</td>
					<td><input type="number" name="count" value="<%=menu.getCount() %>"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="수정하기"></td>
				</tr>
			</table>
		
		</form>
	</div>
</body>
</html>