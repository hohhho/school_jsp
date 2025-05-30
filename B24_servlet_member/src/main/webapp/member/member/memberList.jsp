
<%@page import="member.MemberDAO"%>
<%@page import="member.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <c:set var="contextPath" value="${ pageContext.request.contextPath }" />
   
   
	<jsp:include page="memberHeader.jsp"></jsp:include>

	<div align="center">
		<h1>회원전체정보</h1>
		<table border="1">
			<tr>
				<td>번호</td>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이름</td>
				<td>성별</td>
			</tr>
			<c:set var="number" value="${ 1}"/>
			
			<c:forEach var="member" items="${ memberList }"> 
				<tr>
					<td>${number }</td>
					<td>${member.id} </td>
					<td>${member.pw}</td>
					<td>${member.name}</td>
					<td>${member.gender}</td>
				</tr>
				<c:set var="number" value="${ number = number + 1}"/>
			</c:forEach>

		
		</table>

	</div>
