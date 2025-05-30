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
		Object obj = session.getAttribute("count");
		int count = (int)obj;
		
		obj = session.getAttribute("noList");
		String[] noList = (String[])obj;
		
		obj = session.getAttribute("writerList");
		String[] writerList = (String[])obj;
		
	
		obj = session.getAttribute("subjectList");
		String[] subjectList = (String[])obj;
		
		obj = session.getAttribute("contentsList");
		String[] contentsList = (String[])obj;
		
		obj = session.getAttribute("readCountList");
		int[] readCountList = (int[])obj;
	%>
	<jsp:include page="boardHeader.jsp"></jsp:include>
	
	<div align="center">
		<h1>전체게시글 <%= count %>개</h1>
		
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>삭제</th>
			</tr>
		<%	for(int i=0; i<count; i++) {	%>
			<tr>
				<td><%= noList[i] %></td>		
				<td>
					<a href="boardInfo.jsp?index=<%= i %>"><%= subjectList[i] %></a>
				</td>		
				<td><%= writerList[i] %></td>	
				<td align="center"><%= readCountList[i] %></td>	
				<td>
					<button onclick="window.location.href='deleteBoardPro.jsp?index=<%= i %>'">삭제하기</button>
				</td>	
			</tr>
		<%	} %>
			
		</table>
	</div>
		
</body>
</html>