<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- header -->
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>회원가입</h2>
		<form action="atmJoinPro.jsp">
			<table border="1">
				<tr>
					<th align="center">아이디</th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<th align="center">비밀번호</th>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<th align="center">이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="제출" width="50px"></td>
				</tr>
			</table>
		
		</form>
	</div>
</body>
</html>