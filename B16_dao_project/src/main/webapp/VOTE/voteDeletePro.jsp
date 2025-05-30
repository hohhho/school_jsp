<%@page import="vote.InfoDAO"%>
<%@page import="vote.TitleDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	session.setAttribute("voteCheck", null);
	session.setAttribute("voteSize", null);
	session.setAttribute("voteTitle", null);

	TitleDAO.instance.deleteTitle();
	InfoDAO.instance.deleteInfo();
	
	response.sendRedirect("voteMain.jsp");
%>