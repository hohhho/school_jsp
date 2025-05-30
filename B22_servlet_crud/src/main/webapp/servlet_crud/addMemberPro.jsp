
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
		check는 기본자료형이기때문에 empty 가 아니라 true , false 로 예외처리한다. 
	
	 --%>
	
	<c:if test="${ check eq true }">
			회원등록을 성공했습니다.
	</c:if>
	<c:if test="${ check eq false }">
			화원등록을 실패했습니다.
	</c:if>
	
	
		<a href="${contextPath}/addMember.do">되돌아가기</a>
	
</body>
</html>
    


	
</body>
</html>