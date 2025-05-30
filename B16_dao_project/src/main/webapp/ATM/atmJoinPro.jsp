<%@page import="atm.UserDAO"%>
<%@page import="atm.User"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("accountId");
		String pw = request.getParameter("accountPassword");
		String name = request.getParameter("accountName");
		
		// 계좌는 지금 모른다. 
		User user = new User(null, id, pw, name , 0);
		
		int check = UserDAO.instance.atmJoinPro(user);

		%>
	
 
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
		<%if(check == 0){ %>
			
			<h1>회원가입 성공</h1>
				
		<%}else if(check == 1){ %>
			<h1>아이디 중복</h1>
			
		<%} %>
	</div>
