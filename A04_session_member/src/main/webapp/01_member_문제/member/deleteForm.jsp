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
		<h2>회원탈퇴</h2>
		<form action="deletePro.jsp">
			<table border="1">
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="pw">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="탈퇴하기">
					</td>
				</tr>
			</table>
		</form>	
	</div>
</body>
</html>