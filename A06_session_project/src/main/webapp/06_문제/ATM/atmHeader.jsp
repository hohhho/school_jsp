<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM TEST</title>
</head>
<body>
	<%
		String log = (String)session.getAttribute("log");
	
	%>
	<div align="center">
		<h1>ATM TEST</h1>
		
		<table border="1">
			<tr>
				<td>
					<a href="atmMain.jsp" style="text-decoration: none;">ATM 메인</a>
				</td>
				
				<td>
					<a href="atmList.jsp" style="text-decoration: none;">전체목록</a>
				</td>
				
				<%if(log == null){ %>
				<td>
					<a href="atmJoin.jsp" style="text-decoration: none;">회원가입</a>
				</td>
				
				<td>
					<a href="atmLogin.jsp" style="text-decoration: none;">로그인</a>
				</td>
				
				<td>
					현재상태: 로그아웃
				</td>
				
				<%}else{ %>
				<td>
					<a href="atmLogout.jsp" style="text-decoration: none;">로그아웃</a>
				</td>
				
				<td>
					<a href="atmBalance.jsp" style="text-decoration: none;">예금조회</a>
				</td>
				
				<td>
					<a href="atmDepositForm.jsp" style="text-decoration: none;">입금</a>
				</td>
				
				<td>
					<a href="atmWithdrawForm.jsp" style="text-decoration: none;">출금</a>
				</td>
				
				<td>
					<a href="atmTransferForm.jsp" style="text-decoration: none;">송금</a>
				</td>
				
				<td>
					현재상태: <%=log %>님 로그인 중
				</td>
				<%} %>
				
				<td>
					<a href="atmIndex.jsp" style="text-decoration: none;">ATM 초기화</a>
				</td>
				
				<td>
					<a href="../index.jsp" style="text-decoration: none;">처음으로</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>