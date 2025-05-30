
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <c:set var="contextPath" value="${ pageContext.request.contextPath }" />

	
	<jsp:include page="boardHeader.jsp"></jsp:include>
	
	
	<div align="center">
		<h1>더미 게시글 ${size }개 추가</h1>
	</div>