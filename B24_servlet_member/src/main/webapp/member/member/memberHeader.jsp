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

	<div align="center">
		<h1>회원관리페이지</h1>
		
		<table border="1">
			<tr>
				<td align="right">
					<a href="${contextPath}/memberList.do">회원전체정보</a>
				<c:if test="${ empty log }">
					<a href="${contextPath}/joinForm.do">회원가입</a>
					<a href="${contextPath}/loginForm.do">로그인</a>
					<a href="${contextPath}/adminMain.do">ADMIN</a>
				</c:if>
				<c:if test="${not empty log}">
					<a href="${contextPath}/logout.do">로그아웃</a>
					<a href="${contextPath}/updateForm.do">회원정보수정</a>
					<a href="${contextPath}/deleteForm.do">회원탈퇴</a>
						[ ${log}  님 로그인중 ]
				</c:if>
	
		
				</td>
			</tr>
		</table>
	</div>
		
	
</body>
</html>