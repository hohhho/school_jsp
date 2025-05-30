<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int count = (int)session.getAttribute("count");
	String log = (String)session.getAttribute("log");
	
	String[] idList = (String[])session.getAttribute("idList");
	String[] pwList = (String[])session.getAttribute("pwList");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int check = 0;
	for(int i=0; i < count; i++) {
		if(idList[i].equals(id) && pwList[i].equals(pw)){
			check += 1;
			break;
		}
	}
		
	if(check >= 1) {
		session.setAttribute("log", id);
	}else{
		session.setAttribute("log", null);
	}
%>
	
	<jsp:include page="memberHeader.jsp"></jsp:include>
	<%if(check == 1){ %>
	<div align="center">
		<h1>로그인 성공</h1>
	</div>
	<%}else{ %>
	<div align="center">
		<h1>로그인 실패</h1>
	</div>
	<%} %>
