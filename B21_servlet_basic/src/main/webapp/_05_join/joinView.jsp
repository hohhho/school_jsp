<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>서블릿</title>
	</head>
	<body>
		<div align="center">
			<h2>가입정보</h2>
			<table border="1">
				<tr>
					<th>아이디</th>
					<td>${ user.id }</td>
				</tr>
				<tr>
					<th>패스워드</th>
					<td>${ user.pw }</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${ user.name }</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${ user.email }</td>
				</tr>
				<tr>
					<th>취미</th>
					<td>${ user.hobby }</td>
				</tr>
						
			</table>
		
		</div>	
	</body>
</html>









