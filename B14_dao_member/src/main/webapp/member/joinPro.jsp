

<%@page import="member.MemberDAO"%>
<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
	<%
	
		request.setCharacterEncoding("UTF-8");
		
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
	
		Member member = new Member(id, pw, name, gender);
		int check = MemberDAO.instance.joinPro(member);
	
		
		
	%>
	
	
	    
	<jsp:include page="memberHeader.jsp"></jsp:include>
	<div align="center">
		
		<% if(check > 0) {%>
			<h1>아이디가 중복됩니다.</h1>
			
		<%} else {	%>
		
			<h1>회원가입 성공</h1>	
				
		<%}%>
	</div>
	