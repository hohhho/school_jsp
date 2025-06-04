<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String path = application.getContextPath();
	request.setAttribute("path", path);
%>

<body>
	<div align="center">
		<h1>게시판</h1>
		
		<table border="1">
			<tr align="center">
				<td><a href="${path }/boardList.do">전체 게시글 확인하기</a></td>
				<td><a href="${path }/addDummyPro.do">랜덤 게시글(10개) 추가하기</a></td>
				<td><a href="${path }/deleteAllPro.do">전체 게시글 삭제하기</a></td>
				<td><a href="${path }/addBoard.do">게시글 추가하기</a></td>
				<td><a href="${path }/main.do">메인</a></td>
			</tr>
		</table>
	</div>
</body>
</html>