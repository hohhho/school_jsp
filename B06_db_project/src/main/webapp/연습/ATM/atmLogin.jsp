<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>로그인</h2>
		<form action="atmLoginPro.jsp" mothod="post">
			<table border="1">
				<tr align="center">
					<th>아이디</th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr align="center">
					<th>비밀번호</th>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>