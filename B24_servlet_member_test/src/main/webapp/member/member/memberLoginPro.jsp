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
		<c:choose>
			<c:when test="${state == 1 }">
				<h2>로그인 성공!</h2>
			</c:when>
			<c:when test="${state == 2 }">
				<h2>로그인 실패...</h2>
				<h3>아이디 오류</h3>
			</c:when>
			<c:otherwise>
				<h2>로그인 실패...</h2>
				<h3>비밀번호 오류</h3>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>