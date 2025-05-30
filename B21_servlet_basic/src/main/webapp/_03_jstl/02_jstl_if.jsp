<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL core 태그예제 - if </h3>
	
	<c:set var="name" value="김철수" /> 	
	
	<c:if test="${  name ne null }">
		이름: "${name}" 		<br>
	</c:if>
	
	${name} 는 코딩을 배운다.	<br>
</body>
</html>



