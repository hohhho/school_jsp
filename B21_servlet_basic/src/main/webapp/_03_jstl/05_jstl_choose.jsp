<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--
	jstl 문법에서는 if 와 else 는 아래와 같다. 
	
--%>

<%--
	<c:choose> 로 전체를 감싼후 
		<c:when> 은 if 에 해당한다. 
		<c:otherwise> 는 else 에 해당한다. 
 --%>


<%--
	<c:choose>
		<c:when>
		</c:when>
		
		<c:otherwise>
		</c:otherwise>
		
	</c:choose>
 --%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>JSTL 태그</title>
	</head>
	<body>
		<c:set var="data" value="10" />	
		<c:choose>
			<c:when test="${data >= 10}">
				10보다크거나같다. 
			</c:when>
			<c:otherwise>
				10보다작다.
			</c:otherwise>
		</c:choose>
	</body>
</html>