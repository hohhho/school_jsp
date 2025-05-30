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
	

	<h3>회원수정</h3>
	<h3>해당번호의 이름을 변경할수있다. </h3>

	<form action="${contextPath}/updateMemberPro.do">
		번호 : <input type="number" name="memberNumber">
		이름 : <input type="text" name="memberName">
		<input type="submit">
	</form>
</body>
</html>