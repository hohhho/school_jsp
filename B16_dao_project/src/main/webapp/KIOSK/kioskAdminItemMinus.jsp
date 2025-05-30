<%@page import="kiosk.MenuDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	
	int number = Integer.parseInt(request.getParameter("number"));

	MenuDAO.instance.adminItemMinus(number);

	
	response.sendRedirect("kioskAdminItemList.jsp");

%>

