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
		<table border="1">
			<tr>
				<td><a href="atmMain.jsp">ATM 메인</a></td>
				<td><a href="atmList.jsp">전체목록</a></td>
				<td><a href="atmPaging.jsp">페이징 목록</a></td>
				
				<%if(log==null || log.isEmpty()){%>
				
				<td><a href="atmJoin.jsp">회원가입</a></td>
				<td><a href="atmLogin.jsp">로그인</a></td>
				<td>현재상태 : 로그아웃</td>
				
				<%}else{ %>
				<td><a href="atmLogoutPro.jsp">로그아웃</a></td>
				<td>현재상태 : <%=log %> 님 로그인 중</td>
				<%} %>
				
				
				<td><a href="../index.jsp">처음으로</a></td>
			</tr>
		</table>
	</div>
</body>
</html>