

<%@page import="kiosk.MenuDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
<%

	int number = (int)session.getAttribute("number");
	String itemName = request.getParameter("itemName");
	int itemPrice = Integer.parseInt(request.getParameter("itemPrice"));
	int itemCount = Integer.parseInt(request.getParameter("itemCount"));
	
	
	MenuDAO.instance.adminUpdatePro(number, itemName, itemPrice, itemCount);
	
	response.sendRedirect("kioskAdminItemList.jsp");
%>
	
