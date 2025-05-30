<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>전체 게시글 ${boardList.size() }개</h2>
		
		<table border="1">
			<tr align="center">
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>조회수</td>
				<td>삭제</td>
			</tr>
			
			<c:forEach var="board" items="${boardList }" >
				<tr align="center">
					<td>${board.no }</td>
					<td><a href="${contextPath }/test_boardInfo.do">${board.title }</a></td>
					<td>${board.writer }</td>
					<td>${board.readCount }</td>
					<td><button onclick="window.location.href='${contextPath}/test_deleteOnePro.do?targetNo=${board.no }'">삭제하기</button></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>