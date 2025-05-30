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
	

	<h3>회원등록</h3>
	<form action="${contextPath}/addMemberPro.do">
		번호 : <input type="number" name="memberNumber">
		이름 : <input type="text" name="memberName">
		<input type="submit">
	</form>
</body>
</html>