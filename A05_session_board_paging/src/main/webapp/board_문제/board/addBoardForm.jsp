<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int[] numList = (int[])session.getAttribute("numList");
		int lastIndex = (session.getAttribute("lastIndex") != null) ? (int)session.getAttribute("lastIndex") : 0;
	%>
	
	<%-- header --%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>게시글 추가하기</h2>
		<form action="addBoardPro.jsp">
			<table border="1">
				<tr>
					<td align="center">번호</td>
					<td>
						<%= lastIndex + 1 %>
					</td>
				</tr>
				
				<tr>
					<td align="center">작성자</td>
					<td>
						<input type="text" name="writer">
					</td>
				</tr>
				
				<tr>
					<td align="center">제목</td>
					<td>
						<input type="text" name="title">
					</td>
				</tr>
				
				<tr>
					<td align="center">내용</td>
					<td>
						<textarea cols="30" rows="10" name="contents"></textarea>
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="작성완료">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>