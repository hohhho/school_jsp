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
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>게시글 작성</h2>
		<form action="addOnePro.jsp">
			<table border="1">
				<tr>
					<td align="center">작성자</td>
					<td><input type="text" name="writer"></td>
				</tr>
				<tr>
					<td align="center">제목</td>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<td align="center">내용</td>
					<td><textarea name="contents" rows="10" cols="30"></textarea></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="작성완료"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>