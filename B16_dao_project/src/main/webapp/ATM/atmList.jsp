<%@page import="atm.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="atm.UserDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%

		ArrayList<User> atmList = UserDAO.instance.getAtmList();
	%>
	
	
	
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
        <h3>전체목록</h3>

        <table border="1">
			<tr align="center">	
                <td width="50px">번호</td>
				<td width="250px">계좌번호</td>
                <td width="250px">아이디</td>
				<td width="150px">비밀번호</td>
				<td width="150px">회원이름</td>
                <td width="250px">예금액</td>
			</tr>		
        <%			
			for(int i = 0; i< atmList.size(); i++){				
        %>
            
            <tr align="center">
                <td><%= i + 1%></td>
                <td><%= atmList.get(i).getAccount() %></td>
                <td><%= atmList.get(i).getId() %></td>
                <td><%= atmList.get(i).getPw() %></td>
                <td><%= atmList.get(i).getName() %></td>
                <td><%= atmList.get(i).getBalance() %></td>
                
            </tr>
        <%
            }
        %>
		</table>
     


    </div>
