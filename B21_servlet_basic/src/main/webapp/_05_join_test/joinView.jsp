<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- contextPath --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" /> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center">
		<h1>회원가입 결과</h1>
		<table border="1">
			<tr align="center">
				<td>아이디</td>
				<td>${user.id }</td>
			</tr>
			<tr align="center">
				<td>패스워드</td>
				<td>${user.pw }</td>
			</tr>
			<tr align="center">
				<td>이름</td>
				<td>${user.name }</td>
			</tr>
			<tr align="center">
				<td>이메일</td>
				<td>${user.email }</td>
			</tr>
			<tr align="center">
				<td>취미</td>
				<td>${user.hobby }</td>
			</tr>
		</table>
	</div>
</body>
</html>