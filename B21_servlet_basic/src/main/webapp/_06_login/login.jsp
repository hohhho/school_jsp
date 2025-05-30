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
	<div align="center">	
		<h1>login.jsp</h1>
		<c:if test="${ sessionScope.id eq null }">
			<form action="${ contextPath }/loginPro.do" method="post">
				<table border="1">
					<tr height="40">
						<td width="120"> 아이디 </td>
						<td width="180"> <input type="text" name="id"> </td>
					</tr>
					<tr height="40">
						<td width="120"> 패스워드 </td>
						<td width="180"> <input type="password" name="pw"> </td>
					</tr>
					<tr height="40">
						<td colspan="2" align="center">
							<input type="submit" value="로그인">
						</td>					
					</tr>
				</table>
			</form>
		</c:if>
		<c:if test="${ sessionScope.id ne null}">
			<h2>${ sessionScope.id} </h2>
			<h2>로그아웃</h2>
			<input type="button" value="로그아웃" onclick="location.href='${ contextPath }/logout.do'" />
		</c:if>
	</div>
</body>
</html>