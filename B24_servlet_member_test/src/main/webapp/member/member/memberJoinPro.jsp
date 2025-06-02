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
		<h2>회원가입</h2>
		<c:choose>
			<c:when test="${success eq true}">
				<h3>회원가입 성공!!</h3>
			</c:when>
			<c:otherwise>
				<h3>회원가입 실패...</h3>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>