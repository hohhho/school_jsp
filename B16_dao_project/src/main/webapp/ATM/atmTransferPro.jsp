<%@page import="atm.UserDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		
	
		String log = (String)session.getAttribute("log");
		
		int transfer = Integer.parseInt(request.getParameter("transfer"));
		String accountTransfer =  request.getParameter("accountTransfer");
		
		int state = UserDAO.instance.atmTransferPro(log, transfer, accountTransfer);
			
		System.out.println(state);		

	%>
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">

	<% if(state == 1){ %>
        <h1>송금 성공</h1>
     <%}else if(state == 2) {%>     
        <h1>계좌번호 틀림</h1>
		
	<%}else if(state == 3){ %>
		 <h1>잘못된 숫자</h1>
	<%}else if(state == 4){ %>
		<h1>잔액 부족</h1>
	<%} %>
    </div>
