<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	session.setAttribute("log", null);
	String path = application.getContextPath();
	response.sendRedirect(path + "/main.do");
%>