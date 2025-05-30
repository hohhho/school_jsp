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
	

	<h3>문제3. 1~10 사이의 짝수만 출력</h3>
	
	<c:forEach var="i" begin="1" end="10">
		<c:if test="${i % 2 == 0}">
			${i }&nbsp;
		</c:if>
	</c:forEach>
	
</body>
</html>