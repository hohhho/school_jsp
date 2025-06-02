<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="mheader.jsp"></jsp:include>
	
	<div align="center">
		<h2>회원 전체 정보</h2>
		<table border="1">
			<tr>
				<td>번호</td>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이름</td>
				<td>성별</td>
			</tr>
			
			<c:forEach var="member" items="${memberList }" varStatus="status">
				<tr>
					<td>${status.index+1} </td>
					<td>${member.id } </td>
					<td>${member.pw } </td>
					<td>${member.name } </td>
					<td>${member.gender } </td>
				</tr>
			</c:forEach>
			
		</table>
	</div>
</body>
</html>