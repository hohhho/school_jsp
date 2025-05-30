
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
	<h3>검색결과</h3>
	<%--
		클래스 나 배열은 empty 로 예외처리 를한다.
	
	 --%>
	
	<c:if test="${ !empty member }">
		${member.number}
		${member.name}
	</c:if>
	<c:if test="${ empty member }">
		<p>데이터가 없습니다.</p>
	</c:if>
	
	
	<a href="${contextPath}/findMember.do">되돌아가기</a>
	
</body>
</html>