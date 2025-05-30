<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div align="center">
		<h2>게시글 추가하기</h2>
		<form method="post" action="test_addBoard.do">
			<table border="1">
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td>
						<textarea rows="10px" cols="40px" name="contents"></textarea>
					</td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="추가하기"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>