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
			<c:when test="${updateSuccess eq true }">
				<h2>회원 정보 수정 완료!!</h2>
			</c:when>
			<c:otherwise>
				<h2>수정 실패....</h2>			
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>