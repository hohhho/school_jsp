<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM TEST - atmLogin</title>
</head>
<body>
	<%-- header --%>
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>로그인</h2>
		<form action="atmLoginPro.jsp">
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
						<input type="text" name="pw">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="로그인">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>