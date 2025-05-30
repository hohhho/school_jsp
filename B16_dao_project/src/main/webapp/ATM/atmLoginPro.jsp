<%@page import="atm.UserDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
				
		
			String id = request.getParameter("accountId");
			String pw = request.getParameter("accountPassword");
			
			int check = UserDAO.instance.atmLoginPro(id, pw);
			
			int state = 0;
			
			if(check >= 1) {
				session.setAttribute("log", id);
				state = 1;
			}else{
				session.setAttribute("log", null);
				state = 2;
			}
		%>
	


	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
		<%if(state == 1) {%>
			<h1>로그인 성공</h1>		
			
		<%}else if(state == 2){%>
			<h1>로그인 실패</h1>
		<%}%>
	</div>