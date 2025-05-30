<%@page import="kiosk_연습.OrderDAO"%>
<%@page import="kiosk_연습.Order"%>
<%@page import="kiosk_연습.Menu"%>
<%@page import="kiosk_연습.MenuDAO"%>
<%@page import="java.util.ArrayList"%>
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
	ArrayList<Menu> menuList = MenuDAO.instance.getMenuList();
	ArrayList<Order> orderList = OrderDAO.instance.getOrderList();
	int orderTotal = 0;
%>
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>전체 목록</h2>
		<table border="1">
			<tr align="center">
				<td width="50px">번호</td>
				<td width="250px">이름</td>
				<td width="250px">가격</td>
				<td width="150px">재고수량</td>
			</tr>
			
			<%for(int i=0; i<menuList.size(); i++){ %>
			
			<tr align="center">
				<td><%=menuList.get(i).getNumber() %></td>
				<td><a href="kioskMenuInfo.jsp?targetNum=<%=menuList.get(i).getNumber()%>"><%=menuList.get(i).getName() %></a></td>
				<td><%=menuList.get(i).getPrice()%></td>
				<td><%=menuList.get(i).getCount()%></td>
			</tr>
			
			<%} %>
		</table>
			
		<%if(orderList.size() > 0){ %>		
			
		<h2>주문목록</h2>
		<table border="1">
			<tr align="center">
				<td width="100px">주문번호</td>
				<td width="150px">상품명</td>
				<td width="80px">주문개수</td>
				<td width="150px">가격</td>
			</tr>
		
			<%for(int i=0; i<orderList.size(); i++){ %>
			
			<tr align="center">
				<td><%=i+1 %></td>
				<td><%=orderList.get(i).getName() %></td>
				<td><%=orderList.get(i).getCount() %></td>
				<td><%=orderList.get(i).getPrice() %>원</td>
			</tr>
			<% orderTotal += orderList.get(i).getTotal(); %>
			<%} %>
			
			<tr>
				<td height="50px" align="center"><b>전체총합</b></td>
				<td colspan="3" align="right"><span style="margin-right: 12px"><%=orderTotal %>원</span></td>
			</tr>
		
		</table>
		<%} else{%>
			<h3>아직 주문이 없습니다</h3>
		<%} %>
			
			
	</div>
</body>
</html>