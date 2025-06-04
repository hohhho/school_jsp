<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />    

	<title>게시글추가</title>
	
	<jsp:include page="boardHeader.jsp"></jsp:include>
	<div align="center">
	
	<h2>게시글 추가하기</h2>
		<form method="post" action="${contextPath}/addBoardPro.do">
			<table border="1">			
				<tr>
					<th>작성자</th>
					<td><input type="text" name="writer"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="subject"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" cols="30" name="contents"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="작성완료">
					</td>
				</tr>
			</table>
		</form>
	</div>
