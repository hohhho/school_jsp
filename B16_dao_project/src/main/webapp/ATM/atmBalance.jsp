<%@page import="atm.User"%>
<%@page import="atm.UserDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String log = (String)session.getAttribute("log");
	
	
		User user = UserDAO.instance.atmBalance(log);
	%>

	
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
				
       <h3>계좌조회</h3>
       
       <%if(user == null){ %>
       	<h1>계좌 조회 실패</h1>
       <%}else{ %>
       <table border="1">
			<tr align="center">	
                <td>번호</td>
				<td width="250px">계좌번호</td>
                <td width="250px">아이디</td>
				<td width="150px">비밀번호</td>
				<td width="150px">회원이름</td>
                <td width="250px">예금액</td>
	              
			</tr>		           
	        <tr align="center">
	        	
	            <td><%= 1%></td>
	            <td><%= user.getAccount() %></td>
	            <td><%= user.getId() %></td>
	            <td><%= user.getPw() %></td>
	            <td><%= user.getName() %></td>
	            <td><%= user.getBalance() %></td>        
	        </tr>
       
		</table>
		<%} %>
   
    </div>
