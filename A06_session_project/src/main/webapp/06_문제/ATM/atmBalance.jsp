<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM TEST - atmBalance</title>
</head>
<body>
	<%
		String log = (String)session.getAttribute("log");
		
		String[] accountList = (String[])session.getAttribute("accountList");
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		int[] balanceList = (int[])session.getAttribute("balanceList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		
		int targetIndex = 0;		
		for(int i=0; i<lastIndex; i++){
			if(idList[i].equals(log)){
				targetIndex = i;
				break;
			}
		}
	%>
	
	<%-- header --%>
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>계좌 조회</h2>
		
		<table border="1" >
			<tr align="center">
				<td >번호</td>
				<td width="200px">계좌번호</td>
				<td width="100px">아이디</td>
				<td width="100px">비밀번호</td>
				<td width="100px">회원이름</td>
				<td width="250px">예금액</td>
			</tr>
			
			<tr align="center">
				<td>1</td>
				<td><%=accountList[targetIndex] %></td>
				<td><%=idList[targetIndex] %></td>
				<td><%=pwList[targetIndex] %></td>
				<td><%=nameList[targetIndex] %></td>
				<td><%=balanceList[targetIndex] %></td>
			</tr>
		</table>
	</div>
</body>
</html>