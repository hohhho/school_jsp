<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSTL 태그</title>
</head>
<body>
	<h3>구구단 출력</h3>

	<c:forEach var="i" begin="1" end="9">
		<c:forEach var="j" begin="1" end="9">
			[${i } * ${j } = ${i * j }]&nbsp;&nbsp;
		</c:forEach>
		<br>
	</c:forEach>
</body>
</html>














