
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <c:set var="contextPath" value="${ pageContext.request.contextPath }" />

	


	<jsp:include page="boardHeader.jsp"></jsp:include>
	<div align="center">
		<c:if test="${ check eq true}">
			<h1>게시글을 전부 삭제성공</h1>
		</c:if>
		<c:if test="${ check eq false}">
			<h1>게시글을 전부 삭제실패</h1>
		</c:if>
		
	</div>
