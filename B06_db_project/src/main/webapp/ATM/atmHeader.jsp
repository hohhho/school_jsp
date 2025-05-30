<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM</title>
</head>
<body>
	<%
		String log = (String)session.getAttribute("log");
	%>
	<div align="center">
		<h1>ATM TEST</h1>
		<table border="1">
			<tr>
				<td><a href="atmMain.jsp">ATM 메인</a></td> 
				<td><a href="atmList.jsp">전체목록</a>

				
			     <%if(log != null){%>
			    	 <td><a href="atmLogout.jsp">로그아웃</a></td>
					<td><a href="atmBalance.jsp">예금조회</a></td>
	                <td><a href="atmDepositForm.jsp">입금</a></td>
	                <td><a href="atmWithdrawForm.jsp">출금</a></td>
	                <td><a href="atmTransferForm.jsp">송금</a></td>
                    <td> 현재상태 : <%=log%>님 로그인중</td>
                    
                <%}else{%>
             		 	<td><a href="atmJoinForm.jsp">회원가입</a></td>
					<td><a href="atmLoginForm.jsp">로그인</a></td>
                    <td> 현재상태 : 로그아웃 </td>
            		
                <%}%>
                
                <td><a href="../index.jsp">처음으로</a>
			</tr>
		</table>
	</div>

</body>
</html>