<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<c:set var="contextPath" value="${ pageContext.request.contextPath }" />

<body>
	<jsp:include page="mheader.jsp"></jsp:include>
	
	<div align="center">
		<h2>회원가입</h2>
		<form action="${contextPath }/memberJoin.do" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" name="gender" value="male">남성
						<input type="radio" name="gender" value="female">여성
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="가입하기"></td>
				</tr>
					
				
			</table>
		</form>
		
	</div>
</body>
</html>