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
		int[] numList = (int[])session.getAttribute("numList");
		String[] nameList = (String[])session.getAttribute("nameList");
		int[] priceList = (int[])session.getAttribute("priceList");
		int[] countList = (int[])session.getAttribute("countList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		
		int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
		session.setAttribute("targetIndex", targetIndex);
	%>
	
	<%-- header --%>
	<jsp:include page="kioskHeader.jsp"></jsp:include>
		
	<div align="center">
		<h2><%=nameList[targetIndex] %>주문</h2>
		
		<form action="kioskOrderPro.jsp">
			<table border="1">
				<tr align="center">
					<td width="100">제품명</td>
					<td width="180"><%=nameList[targetIndex] %></td>
				</tr>
				
				<tr align="center">
					<td>가격</td>
					<td><%=priceList[targetIndex] %></td>
				</tr>
				
				<tr align="center">
					<td>재고수량</td>
					<td><%=countList[targetIndex] %></td>
				</tr>
				
				<tr align="center">
					<td>주문수량</td>
					<td><input type="number" name="orderCount" value="1"></td>					
				</tr>
				
				<tr align="center">
					<td colspan="2"><input type="submit" value="주문하기"></td>					
				</tr>
			</table>
		</form>
	</div>
</body>
</html>