<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
        
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
				<td>
					<a href="${contextPath}/boardList.do">전체 게시글 확인하기</a>
				</td>
				
				<td >
					<a href="${contextPath}/addDummyPro.do">랜덤 게시글(10개) 추가하기</a>
				</td>
				
				<td >
					<a href="${contextPath}/deleteAllBoard.do">전체 게시글 삭제하기</a>
				</td>
				
				<td >
					<a href="${contextPath}/addBoard.do">게시글 추가하기</a>
				</td>
				
				<td >
					<a href="${contextPath}/boardListPaging.do">전체 게시글 (페이징)</a>
				</td>
				
				<td >
					<a href="${contextPath}/main.do">메인</a>
				</td>
			</tr>

		</table>		
	</div>
	
</body>
</html>