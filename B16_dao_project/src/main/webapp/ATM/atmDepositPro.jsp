<%@page import="atm.UserDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%

	
		String log = (String)session.getAttribute("log");
		int deposit = Integer.parseInt(request.getParameter("deposit"));
		
	
		int state = 0; // 1은성공, 2는 음수
		if(deposit < 0){
			state = 2;
		}else{
			
			state = UserDAO.instance.atmDepositPro(deposit, log);
		
		

		}
		
		
	%>
	
	<div align="center">
	<jsp:include page="atmHeader.jsp"/>
	
	<%if(state == 2) {%>
		<h1>잘못된 입금액</h1>
		
	<%}else if(state != 0){ %>
				
        <h1>입금 성공</h1>
     <%} %>


    </div>
