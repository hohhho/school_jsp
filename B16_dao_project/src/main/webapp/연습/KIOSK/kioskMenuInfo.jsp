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
	
	Menu targetMenuInfo = MenuDAO.instance.getTargetMenuInfo(targetNum);
	
	
%>

	<jsp:include page="kioskHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>메뉴 주문</h2>
		
		<form action="kioskOrderPro.jsp">
			<table border="1">
				<tr align="center">
					<td>이름</td>
					<td><%=targetMenuInfo.getName() %>
				</tr>
				<tr align="center">
					<td>가격</td>
					<td><%=targetMenuInfo.getPrice() %></td>
				</tr>
				<tr>
					<td align="center">주문수량</td>
					<td><input type="number" value="1" name="orderCount" style="text-align: right"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="담기" width="40px"></td>
				</tr>
			</table>
		</form>
		
	</div>
</body>
</html>