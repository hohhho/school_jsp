<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="boardHeader.jsp"></jsp:include>
	<div align="center">

		<h2>게시글 정보</h2>

		<table border="1">
			<tr>
				<th>번호</th>
				<td >${board.no}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${board.writer}</td>
				
			</tr>
			<tr>
				<th>조회수</th>
				<td>${board.readCount}</td>
				
			</tr>
			<tr>
				<th>제목</th>
				<td >${board.subject}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td >
					<textarea rows="10" cols="30" name="contents" readonly="readonly">${board.content}</textarea>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>