<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    
    	int nextPage = Integer.parseInt(request.getParameter("nextPage"));
    
   	
		
		session.setAttribute("currentPage", nextPage);
    	System.out.println("nextPage=" + nextPage);
    
    	response.sendRedirect("boardListPaging.jsp");
    %>
