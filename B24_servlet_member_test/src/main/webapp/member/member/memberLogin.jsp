<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="mheader.jsp"></jsp:include>
	<div align="center">
		<h2>로그인</h2>
		<form method="post" action="memberLogin.do">
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
					<td colspan="2" align="center"><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>