<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String path = application.getContextPath();
%>
<body>
	<div align="center">
		<h1>회원관리페이지</h1>
		<table border="1">
			<c:choose>
				<c:when test="${empty sessionScope.log }">
					<tr>
						<td><a href="<%=path %>/memberList.do">회원전체정보</a></td>
						<td><a href="<%=path%>/memberJoin.do">회원가입</a></td>
						<td><a href="<%=path%>/memberLogin.do">로그인</a></td>
						<td><a href="">ADMIN</a></td>
					</tr>
				</c:when>
				<c:otherwise>
					<tr>
						<td><a href="<%=path %>/memberList.do">회원전체정보</a></td>
						<td><a href="<%=path %>/memberLogoutPro.do">로그아웃</a></td>
						<td><a href="<%=path %>/memberUpdate.do">회원정보수정</a></td>
						<td><a href="<%=path %>/memberDelete.do">회원탈퇴</a></td>
						<td>[${log } 님 로그인 중]</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
</body>
</html>