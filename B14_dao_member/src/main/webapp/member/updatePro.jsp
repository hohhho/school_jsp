
<%@page import="member.MemberDAO"%>
<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	
	
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<%
	
		
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		
		String log = (String)session.getAttribute("log");
		
		Member member = new Member(log, pw, name, gender);
		int check = MemberDAO.instance.updatePro(member);
		

		
		%>
		<jsp:include page="memberHeader.jsp"></jsp:include>
		<div align="center">
			<h1>수정 성공</h1>
		</div>
