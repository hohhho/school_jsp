<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>게시판</h1>
		<table border="1">
			<tr>
				<td>
					<a href="boardList.jsp" style="text-decoration: none;">전체 게시글</a>
				</td>
				
				<td>
					<a href="addDummyPro.jsp" style="text-decoration: none;">랜덤 게시글(10개) 추가</a>
				</td>
				
				<td>
					<a href="deleteAllBoard.jsp" style="text-decoration: none;">전체 게시글 삭제</a>
				</td>
				
				<td>
					<a href="addBoardForm.jsp" style="text-decoration: none;">게시글 추가</a>
				</td>
				
				<td>
					<a href="boardListPaging.jsp" style="text-decoration: none;">전체 게시글(페이징)</a>
				</td>
				
				<td>
					<a href="../index.jsp" style="text-decoration: none;">초기화</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>