
<%@page import="member.Member"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <c:set var="contextPath" value="${ pageContext.request.contextPath }" />

	<jsp:include page="memberHeader.jsp"></jsp:include>
	<div align="center">
		<h1>회원정보 수정</h1>
		<form method="post" action="${contextPath}/updatePro.do">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td >${log}</td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="pw" value="${member.getPw()}"></td>				
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${member.getName()}"></td>				
				</tr>
				<tr>
					<td>성별</td>
					<td>
					
					<c:if test="${member.getGender() eq '남'}">
						<input type="radio" name="gender" value="남" checked="checked">남성
						<input type="radio" name="gender" value="여">여성
					</c:if>
					<c:if test="${member.getGender() eq '여'}">
						<input type="radio" name="gender" value="남">남성
						<input type="radio" name="gender" value="여" checked="checked">여성
					</c:if> 
					
					</td>	
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="입력완료">
					</td>
				</tr>
			</table>
		</form>	
	</div>
