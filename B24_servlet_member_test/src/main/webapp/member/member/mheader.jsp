<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String path = application.getContextPath();
%>
<body>
	<div align="center">
		<h1>회원관리페이지</h1>
		<table border="1">
			<tr>
				<td><a href="<%=path %>/memberList.do">회원전체정보</a></td>
				<td><a href="">회원가입</a></td>
				<td><a href="">로그인</a></td>
				<td><a href="">ADMIN</a></td>
			</tr>
		</table>
	</div>
</body>
</html>