<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>

	<div align="center">
		<h1>게시판</h1>
		<table border="1">
			<tr>
			
				<td >
					<a href="boardList.jsp">전체 게시글 확인하기</a>
				</td>
				
				<td >
					<a href="addDummyPro.jsp">랜덤 게시글(10개) 추가하기</a>
				</td>
				
				<td >
					<a href="deleteAllBoard.jsp">전체 게시글 삭제하기</a>
				</td>
				
				<td >
					<a href="addBoard.jsp">게시글 추가하기</a>
				</td>
				
				<td >
					<a href="boardListPaging.jsp">전체 게시글 (페이징)</a>
				</td>
				
				<td >
					<a href="../index.jsp">메인</a>
				</td>
			</tr>

		</table>		
	</div>
	
</body>
</html>