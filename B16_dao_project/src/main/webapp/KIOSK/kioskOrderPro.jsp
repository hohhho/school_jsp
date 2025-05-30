<%@page import="kiosk.OrderDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	


	int number = (int)session.getAttribute("number");
	String orderName  = (String)session.getAttribute("orderName");
	int orderPrice = (int)session.getAttribute("orderPrice");	
	int orderCount = Integer.parseInt(request.getParameter("orderCount"));
	int state = OrderDAO.instance.kioskOrderPro(orderCount, number, orderName, orderPrice);
				
%>

<jsp:include page="kioskHeader.jsp"/>
<div align="center">
	<%if(state == 1) {%>
		 <h1> 주문 완료</h1>
	<%}else if(state == 2){%>
	 	<h1> 수량 부족</h1>
	<%} %>

</div>

