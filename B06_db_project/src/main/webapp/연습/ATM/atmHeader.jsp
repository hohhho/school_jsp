<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String log = (String)session.getAttribute("log");
%>

	<div align="center">
		<h1>ATM TEST</h1>
		<table>
			<tr align="center">
				<td width="100px"><a href="atmMain.jsp" style="text-decoration: none; color: #3D90D7">ATM 메인</a></td>
				<td width="100px"><a href="atmList.jsp" style="text-decoration: none; color: #3D90D7">전체목록</a></td>
				
				<%if(log == null){ %>
				
				<td width="100px"><a href="atmJoin.jsp" style="text-decoration: none; color: #3D90D7">회원가입</a></td>
				<td width="100px"><a href="atmLogin.jsp" style="text-decoration: none; color: #3D90D7">로그인</a></td>
				<td width="150px"><span style="color: #3D90D7;">현재상태 : 로그아웃</span></td>
				
				<%} else{%>
				
				<td width="100px"><a href="atmLogoutPro.jsp" style="text-decoration: none; color: red">로그아웃</a></td>
				<td width="100px"><a href="atmMyAccount.jsp" style="text-decoration: none; color: #3D90D7">예금조회</a></td>
				<td width="100px"><a href="atmDeposit.jsp" style="text-decoration: none; color: #3D90D7">입금</a></td>
				<td width="100px"><a href="atmWithdraw.jsp" style="text-decoration: none; color: #3D90D7">출금</a></td>
				<td width="100px"><a href="atmTransfer.jsp" style="text-decoration: none; color: #3D90D7">송금</a></td>
				<td width="200px"><span style="color: #3D90D7;">현재상태 : <b><%=log %></b> 님 로그인 중</span></td>
				
				<%} %>
				<td width="100px"><a href="../index.jsp" style="text-decoration: none; color: #3D90D7">처음으로</a></td>
			</tr>
		</table>
	</div>
</body>
</html>