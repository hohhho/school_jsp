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
		
		obj = session.getAttribute("regDateList");
		String[] regDtaeList = (String[])obj;
		
		obj = session.getAttribute("subjectList");
		String[] subjectList = (String[])obj;
		
		obj = session.getAttribute("contentsList");
		String[] contentsList = (String[])obj;
		
		obj = session.getAttribute("readCountList");
		int[] readCountList = (int[])obj;
		
		int index = Integer.parseInt(request.getParameter("index"));
		readCountList[index] += 1;
		session.setAttribute("readCountList", readCountList);
		
	%>
	<jsp:include page="boardHeader.jsp"></jsp:include>
	<div align="center">

		<h2>게시글 수정하기</h2>

		<table border="1">
			<tr>
				<th>번호</th>
				<td ><%= noList[index] %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%= writerList[index] %></td>
				
			</tr>
			<tr>
				<th>조회수</th>
				<td><%= readCountList[index] %></td>
				
			</tr>
			<tr>
				<th>제목</th>
				<td >
					<%= subjectList[index] %>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td >
					<textarea rows="10" cols="30" name="contents" readonly="readonly"><%= contentsList[index] %></textarea>
				</td>
			</tr>
			
		</table>
	</div>
</body>
</html>