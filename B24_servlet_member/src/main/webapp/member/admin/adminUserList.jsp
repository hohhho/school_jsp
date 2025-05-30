
<%@page import="member.MemberDAO"%>
<%@page import="member.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <c:set var="contextPath" value="${ pageContext.request.contextPath }" />
	
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<div align="center">
		<h1>관리자 페이지(회원 정보 확인하기)</h1>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이름</td>
				<td>성별</td>
				<td>삭제</td>
			</tr>
		<c:forEach var="member" items="${memberList}">
			<tr>
				<td>${member.id} </td>
				<td>${member.pw}</td>
				<td>${member.name}</td>
				<td>${member.gender}</td>
				<td><input type="button" value="삭제" onclick="location.href='${contextPath}/adminUserDeletePro.do?id=${member.id}'"></td>
			</tr>
		</c:forEach>
		
		</table>	
	</div>
