<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:set var="contextPath" value="${ pageContext.request.contextPath }" />


<div align="center">
	<h1>index5.jsp</h1>
	
	<form action="${contextPath}/test5.do" method="post">
		<input type="submit">
	</form>
</div>