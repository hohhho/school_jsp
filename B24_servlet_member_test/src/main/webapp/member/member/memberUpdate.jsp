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
	<h2>회원 정보 수정</h2>
		<form method="post" action="${contextPath }/memberUpdate.do">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td>${member.id }</td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td>
						<input type="password" value="${member.pw }" name="pw">
					</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>
						<input type="text" value="${member.name }" name="name"> 
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<input type="text" value="${member.gender }" name="gender">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="입력완료">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>