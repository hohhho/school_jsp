<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a { text-decoration: none; }
</style>
</head>
<body>
	<div align="center">
		<h1>게시판</h1>
		<table border="1">
			<tr>
				<td><a href="boardList.jsp">전체 게시글 확인하기</a></td>
				<td><a href="addDummyPro.jsp">랜덤 게시글(10개) 추가하기</a></td>
				<td><a href="deleteAll.jsp">전체 게시글 삭제하기</a></td>
				<td><a href="addOne.jsp">게시글 작성하기</a></td>
				<td><a href="boardListPaging.jsp">전체 게시글(페이징)</a></td>
				<td><a href="main.jsp">메인</a></td>
			</tr>
		</table>
	</div>
</body>
</html>