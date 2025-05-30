<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="memberHeader.jsp"></jsp:include>
	<div align="center">
		<h1>회원탈퇴</h1>
		
		<form method="post" action="deletePro.jsp">
			<table border="1">
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="pw"></td>
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