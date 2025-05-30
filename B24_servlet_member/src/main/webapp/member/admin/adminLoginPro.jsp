
<%@page import="admin.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <c:set var="contextPath" value="${ pageContext.request.contextPath }" />
   
<jsp:include page="adminHeader.jsp"></jsp:include>
	<c:if test="${check eq  1}">
		<div align="center">
			<h1>로그인 성공</h1>
		</div>
	</c:if>
	<c:if test="${check ne  1}">
		<div align="center">
			<h1>로그인 실패</h1>
		</div>
	</c:if>

