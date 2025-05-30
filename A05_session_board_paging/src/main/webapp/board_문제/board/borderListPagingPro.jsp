<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		int nextPage = Integer.parseInt(request.getParameter("nextPage"));
	
		session.setAttribute("currentPage", nextPage);
		
		response.sendRedirect("boardListPaging.jsp");
	%>
