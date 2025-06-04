<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
	
	<jsp:include page="boardHeader.jsp"></jsp:include>
	
	<div align="center">
		<h1>전체게시글 ${count}개</h1>
		
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>삭제</th>
			</tr>
		<c:forEach var="i" begin="${startIndex}" end="${endIndex - 1}">
			<tr>
				<td>${boardList[i].no}</td>
				<td>
					<a href="boardInfo.do?no=${boardList[i].no}">${boardList[i].subject}</a>
				</td>
				<td>${boardList[i].writer}</td>
				<td align="center">${boardList[i].readCount}</td>
				<td>
					<button onclick="window.location.href='deleteBoardPro.do?no=${boardList[i].no}'">삭제하기</button>
				</td>
			</tr>
		</c:forEach>			
		</table>
		
		<br>
		<c:if test="${startButton > 1}">
			<button onclick="window.location.href='boardListPagingPro.do?nextPage=${startButton - 1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startButton}" end="${endButton - 1}">
			<button onclick="window.location.href='boardListPagingPro.do?nextPage=${i}'">${i}</button>
		</c:forEach>		
		<c:if test="${endButton < lastButton}">
			<button onclick="window.location.href='boardListPagingPro.do?nextPage=${endButton}'">이후</button>
		</c:if>
		
		<br>
		<h1>테스트 버튼</h1>
		<c:forEach var="i" begin="1" end="20">
			<button onclick="window.location.href='boardListPagingPro.do?nextPage=${i}'">${i}</button>
		</c:forEach>
	</div>
		
