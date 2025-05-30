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
	

	<h3>문제4. 1~10의 합 출력</h3>
	
	<c:forEach var="i" begin="1" end="10">
		<c:set var="sum" value="${sum = sum + i }" />
	</c:forEach>
	
	${sum }
	
</body>
</html>