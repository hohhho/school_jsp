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
		String adminLog = (String)session.getAttribute("adminLog");
	%>
	<div align="center">
		<h1>관리자 페이지</h1>
		<table border="1">
			<tr>
				<%if(adminLog == null){ %>
				<td>
					<a href="../member/main.jsp" style="text-decoration: none;">회원페이지로 이동</a>
				</td>
				
				<td>
					<a href="adminLoginForm.jsp" style="text-decoration: none;">관리자 로그인</a>
				</td>
				<%} else{%>
					<td>
					<a href="adminLogout.jsp" style="text-decoration: none;">관리자 로그아웃</a>
				</td>
				
				<td>
					<a href="adminMemberList.jsp" style="text-decoration: none;">회원관리</a>
				</td>
				
				<td>
					<a href="../index.jsp" style="text-decoration: none;">전체 초기화</a>
				</td>
				<%} %>
			</tr>
		</table>
	
	</div>
</body>
</html>