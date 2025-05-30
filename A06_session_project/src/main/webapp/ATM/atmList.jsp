<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		int count = (int)session.getAttribute("count");
		String[] accountList = (String[])session.getAttribute("accountList");
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		int[] balanceList = (int[])session.getAttribute("balanceList");
	
	
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
			for(int i = 0; i< count; i++){				
        %>
            
            <tr align="center">
                <td><%= i + 1%></td>
                <td><%= accountList[i] %></td>
                <td><%= idList[i] %></td>
                <td><%= pwList[i] %></td>
                <td><%= nameList[i] %></td>
                <td><%= balanceList[i] %></td>
                
            </tr>
        <%
            }
        %>
		</table>
    </div>
