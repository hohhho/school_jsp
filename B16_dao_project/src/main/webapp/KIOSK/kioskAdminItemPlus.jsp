<%@page import="kiosk.MenuDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	
	int number = Integer.parseInt(request.getParameter("number"));
	
	
	MenuDAO.instance.adminItemPlus(number);
	
	response.sendRedirect("kioskAdminItemList.jsp");

%>

