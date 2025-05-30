

<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<% request.setCharacterEncoding("UTF-8"); %>
	
	<%
		String log = (String)session.getAttribute("log");
		String pw = request.getParameter("pw");
		
		int check = MemberDAO.instance.deletePro(log, pw);
		if(check != 0 ) {
			session.setAttribute("log", null);
		}
	%>
	
	
	<jsp:include page="memberHeader.jsp"></jsp:include>
	<%if(check != 0){ %>
	<div align="center">
		<h1>회원탈퇴 성공</h1>
	</div>
	<%}else{ %>
	<div align="center">
		<h1>회원탈퇴 실패</h1>
	</div>
	<%} %>



