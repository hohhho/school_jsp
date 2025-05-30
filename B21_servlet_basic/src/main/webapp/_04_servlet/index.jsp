<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  
<%--
	서블릿을 이용하는경우 이동할때마다 프로젝트명을 앞에 붙여줘야한다. 	
--%> 

<c:set var="contextPath" value="${ pageContext.request.contextPath }" />

<script >
	location.href="${contextPath}/test.do";	
</script>