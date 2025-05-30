<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     

    
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>logout.jsp</h1>
		<c:remove var="id"  />
		
		<input type="button" value="돌아가기" onclick="location.href='${contextPath}/login.do'" />	
	</div>

	
</body>
</html>