<%@page import="vote.TitleDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		
	
		String voteTitle = request.getParameter("voteTitle");
		int voteSize = Integer.parseInt(request.getParameter("voteSize"));
		TitleDAO.instance.voateMake1Pro(voteTitle, voteSize);
		
		session.setAttribute("voteSize", voteSize);
		session.setAttribute("voteTitle", voteTitle);
		
		
		session.setAttribute("voteCheck", "true");
		


		
		response.sendRedirect("voteMake2.jsp");
	%>
