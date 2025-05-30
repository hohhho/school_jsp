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
		<h1>관리자 페이지</h1>
		<table border="1">
			<tr>
				<c:if test="${log ne null}">
					<td >
						<a href="${contextPath}/adminLogout.do">관리자 로그아웃</a>
					</td>
					<td>
						<a href="${contextPath}/adminUserList.do">회원관리</a>
					</td>
					</c:if>
				<c:if test="${log eq null}">
					<td>
						<a href="${contextPath}/main.do">회원페이지로 이동</a>
					</td>
					<td>
						<a href="${contextPath}/adminLoginForm.do">관리자 로그인</a>
					</td>
				</c:if>
				
			</tr>

		</table>		
	</div>
</body>
</html>