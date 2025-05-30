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
		int[] numberList = (int[])session.getAttribute("numberList");
		String[] titleList = (String[])session.getAttribute("titleList");
		String[] writerList = (String[])session.getAttribute("writerList");
		int[] lookCountList = (int[])session.getAttribute("lookCountList");
		int index = (int)session.getAttribute("index");
	%>
	
	<%--top --%>
	<jsp:include page="00_navigator.jsp" />
	

	<div align="center">
		<h1>전체 게시글 <%=index %>개</h1>
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>삭제</th>
			</tr>
			<%for(int i = 0; i < index; i++){ %>
				<tr>
					<td align="center"><%=numberList[i] %></td>
					<td align="center"> 
						<a href="06_boardInfo.jsp?targetIndex=<%=i%>"><%=titleList[i] %></a>
					</td>
					<td align="center"><%=writerList[i] %></td>
					<td align="center"><%=lookCountList[i] %></td>
					<td align="center">
						<button onclick="window.location.href='07_deleteBoardPro.jsp?targetIndex=<%=i%>'">삭제하기</button>
					</td>
				</tr>
			<%} %>
		</table>
	</div>
</body>
</html>