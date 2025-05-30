<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String log = (String)session.getAttribute("log"); %>
		<div align="center">
		<h1>관리자 페이지</h1>
		<table border="1">
			<tr>
			
				<%if(log != null) {%>
				<td >
					<a href="adminLogoutPro.jsp">관리자 로그아웃</a>
				</td>
				<td>
					<a href="adminUserList.jsp">회원관리</a>
				</td>
				
				<%}else{ %>
				<td>
					<a href="../member/main.jsp">회원페이지로 이동</a>
				</td>
				<td>
					<a href="adminLoginForm.jsp">관리자 로그인</a>
				</td>
				<%} %>
			</tr>

		</table>		
	</div>
</body>
</html>