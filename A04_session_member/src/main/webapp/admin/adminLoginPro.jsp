<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int check = 0;
	// 관리자가 로그인 한 경우
	if(id.equals("admin") && pw.equals("admin")){
		session.setAttribute("log", "admin");
		check= 1;
	}else{
		session.setAttribute("log", null);
	}

%>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<%if(check == 1){ %>
	<div align="center">
		<h1>로그인 성공</h1>
	</div>
	<%}else{ %>
	<div align="center">
		<h1>로그인 실패</h1>
	</div>
	<%} %>
