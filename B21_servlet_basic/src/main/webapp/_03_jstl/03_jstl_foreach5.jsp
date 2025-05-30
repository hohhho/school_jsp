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
	
	<h3>문제5. 1~10의 홀수의 개수 출력</h3>
	<c:forEach var="i" begin="1" end="10">
		<c:if test="${ i % 2 == 1 }">
			<c:set var="cnt" value="${ cnt = cnt + 1 }" />
		</c:if>
	</c:forEach>
	${ cnt }
	<br>
</body>
</html>