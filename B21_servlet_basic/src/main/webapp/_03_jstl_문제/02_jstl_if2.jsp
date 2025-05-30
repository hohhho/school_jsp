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
	<%-- 
		# 변수 선언 
		아래 문장은 request.setAttribute("num", 4);와 같은 문장이다.	
		int num = 4; 이 문장과 같은 문장이 아니다!
	--%>
	<c:set var="num" value="4" />

	<c:if test="${num > 3 }">
		실행됨! <br>
	</c:if>

	

	
</body>
</html>