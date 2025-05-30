<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- navigator --%>
	<jsp:include page="navigator.jsp"></jsp:include>
	
	<div align="center">
		<h2>회원가입</h2>
		<form method="post" action="joinPro.jsp">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="id">
					</td>
				</tr>
				
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="pw">
					</td>
				</tr>
				
				<tr>
					<td>이름</td>
					<td>
						<input type="text" name="name">
					</td>
				</tr>
				
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" name="gender" value="남성">남성
						<input type="radio" name="gender" value="여성">여성
					</td>
				</tr>
				
				<tr>
					<td align="center" colspan="2">
							<input type="submit" value="회원가입">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>