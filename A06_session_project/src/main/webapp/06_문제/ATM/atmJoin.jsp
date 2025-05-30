<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM TEST - atmJoin</title>
</head>
<body>
	<%-- header --%>
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>회원가입</h2>
		
		<form action="atmJoinPro.jsp">
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
					<td align="center" colspan="2">
						<input type="submit" value="제출">
					</td>
				</tr>
			</table>
		</form>
		
	</div>
</body>
</html>