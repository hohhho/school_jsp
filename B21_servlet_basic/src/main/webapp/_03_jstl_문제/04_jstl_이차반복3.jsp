<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSTL 태그</title>
</head>
<body>
	
	<%--
			#
			##
			###
			####
			#####
		 --%>

	<c:forEach var="i" begin="1" end="5">
		<c:forEach var="j" begin="1" end="${i }">
			#
		</c:forEach>
		<br>
	</c:forEach>
</body>
</html>














