<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <c:set var="contextPath" value="${ pageContext.request.contextPath }" />
    
	<jsp:include page="memberHeader.jsp"></jsp:include>
	<div align="center">
		<h1>로그인 페이지</h1>
		<form method="post" action="${contextPath}/loginPro.do">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="로그인">
					</td>
				</tr>
			</table>	
		</form>
		
		
	</div>
