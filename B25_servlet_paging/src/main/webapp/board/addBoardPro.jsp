<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />    

	<jsp:include page="boardHeader.jsp"></jsp:include>

	<div align="center">
		<c:if test="${check eq 1}">
			<h1>게시글 입력 성공</h1>
		</c:if>
		<c:if test="${check ne 1}">
			<h1>게시글 입력 실패</h1>
		</c:if>
	</div>