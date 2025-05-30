<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	

	<h3>문제2. 1~10 홀수만 출력</h3>
	
	<c:forEach var="i" begin="1" end="10">
		<c:if test="${i mod 2 eq 1 }">
			${i } &nbsp;
		</c:if>
	</c:forEach>
	<hr>
	
	<c:forEach var="i" begin="1" end="10" step="2">
		${i }&nbsp;
	</c:forEach>
	
</body>
</html>