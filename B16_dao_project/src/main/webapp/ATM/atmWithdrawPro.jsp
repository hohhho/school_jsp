<%@page import="atm.UserDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		
	
		String log = (String)session.getAttribute("log");
		
		int withdraw = Integer.parseInt(request.getParameter("withdraw"));
		
		int state = UserDAO.instance.atmWithdrawPro(withdraw, log);
		
		

	%>
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
	
	<% if(state == 1){ %>
				
        <h1>출금 성공</h1>
		
     <%}else if(state == 2) {%>
     
        <h1>잔액 부족</h1>
		
	<%}else if(state == 3){ %>
		 <h1>잘못된 숫자</h1>
	<%} %>
    </div>
