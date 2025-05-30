
<%@page import="admin.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int check = AdminDAO.instance.adminLoginPro(id, pw);
	
	
	
	
	if(check > 0) {
		session.setAttribute("log", id);
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

