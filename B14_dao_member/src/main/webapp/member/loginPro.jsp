

<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
		<%
				
		
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			int check = MemberDAO.instance.loginPro(id, pw);
			
			
			
			if(check >= 1) {
				session.setAttribute("log", id);
			}else{
				session.setAttribute("log", null);
			}
		%>
			
		<jsp:include page="memberHeader.jsp"></jsp:include>
		<%if(check != 0){ %>
		<div align="center">
			<h1>로그인 성공</h1>
		</div>
		<%}else{ %>
		<div align="center">
			<h1>로그인 실패</h1>
		</div>
		<%} %>
	
	