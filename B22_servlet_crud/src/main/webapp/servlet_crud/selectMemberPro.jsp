
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
	<c:if test="${ !empty member  }">
			${member.number}
			${member.name} 
	</c:if>
	<c:if test="${empty member  }">
			회원정보가 없습니다. 
	</c:if>
	
	<a href="${contextPath}/selectMember.do">되돌아가기</a>
</body>
</html>