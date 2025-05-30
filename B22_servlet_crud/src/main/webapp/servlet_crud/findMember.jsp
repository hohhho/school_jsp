<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <c:set var="contextPath" value="${ pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	

	<h3>검색할 회원번호를 입력하세요.</h3>
	<form action="${contextPath}/findMemberPro.do">
		번호 : <input type="text" name="memberNumber">
		
		<input type="submit">
	</form> 
	
	
</body>
</html>