
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
	<%--	
		[회원삭제]
			String sql = "DELETE FROM member WHERE member_number=?";
	 --%>

	<c:if test="${ check eq true }">
			회원삭제를 성공했습니다.
	</c:if>
	<c:if test="${ check eq false }">
			화원삭제를 실패했습니다.
	</c:if>
		<a href="${contextPath}/deleteMember.do">되돌아가기</a>


	
</body>
</html>