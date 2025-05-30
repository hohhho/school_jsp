

<%@page import="member.MemberDAO"%>
<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <c:set var="contextPath" value="${ pageContext.request.contextPath }" />
   
	    
	<jsp:include page="memberHeader.jsp"></jsp:include>
	<div align="center">
		<c:if test="${check gt 0}">
			<h1>아이디가 중복됩니다.</h1>
		</c:if>
		<c:if test="${check eq 0}">
			<h1>회원가입 성공</h1>	
		</c:if>
		
	</div>
	