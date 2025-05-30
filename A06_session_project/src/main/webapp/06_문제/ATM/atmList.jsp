<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM TEST - atmList</title>
</head>
<body>
	<%
		String[] accountList = (String[])session.getAttribute("accountList");
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		int[] balanceList = (int[])session.getAttribute("balanceList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		
	%>
	
	<%-- header --%>
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>전체 목록</h2>
		
		<table border="1">
			<tr align="center">
				<td>번호</td>
				<td width="200px">계좌번호</td>
				<td width="100px">아이디</td>
				<td width="100px">비밀번호</td>
				<td width="100px">회원 이름</td>
				<td width="250px">예금액</td>
			</tr>
			
			<%for(int i=0; i<lastIndex; i++){ %>
				<tr align="center">
					<td><%=i+1 %></td>
					<td><%=accountList[i] %></td>
					<td><%=idList[i] %></td>
					<td><%=pwList[i] %></td>
					<td><%=nameList[i] %></td>
					<td><%=balanceList[i] %></td>
				</tr>
			<%} %>
		</table>
	</div>
</body>
</html>