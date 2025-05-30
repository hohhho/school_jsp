<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <c:set var="contextPath" value="${ pageContext.request.contextPath }" />
	
	<jsp:include page="boardHeader.jsp"></jsp:include>
	
	<div align="center">
		<h1>전체게시글 ${boardList.size()} 개</h1>
		
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>삭제</th>
			</tr>
			
			<c:forEach var="board" items="${ boardList }"> 
				<tr>
					<td>${board.no}</td>
					<td><a href="${contextPath }/getBoardInfo.do?no=${board.no} ">${board.subject}</a></td>
					<td>${board.writer} </td>
					<td>${board.readcount}</td>
					<td><button onclick="window.location.href='${contextPath }/deleteBoardPro.do?no=${board.no}'">삭제하기</button></td>
				</tr>
			</c:forEach>
	
		</table>
	</div>
		
