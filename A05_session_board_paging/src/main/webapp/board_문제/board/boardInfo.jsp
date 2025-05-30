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
		String[] writerList = (String[])session.getAttribute("writerList");
		String[] titleList = (String[])session.getAttribute("titleList");
		String[] contentsList = (String[])session.getAttribute("contentsList");
		int[] viewCountList = (int[])session.getAttribute("viewCountList");
		
		int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
		
		viewCountList[targetIndex] += 1;
		session.setAttribute("viewCountList", viewCountList);
	%>
	
	<%-- header --%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>게시글 정보</h2>
		<table border="1">
			<tr>
				<td align="center">번호</td>
				<td>
					<%= numList[targetIndex] %>
				</td>
			</tr>
			
			<tr>
				<td align="center">작성자</td>
				<td>
					<%=writerList[targetIndex] %>
				</td>
			</tr>
			
			<tr>
				<td align="center">제목</td>
				<td>
					<%=titleList[targetIndex] %>
				</td>
			</tr>
			
			<tr>
				<td align="center">내용</td>
				<td>
					<textarea cols="30" rows="10" name="contents" readonly><%= contentsList[targetIndex] %></textarea>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>