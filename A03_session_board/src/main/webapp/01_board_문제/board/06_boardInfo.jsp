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
		String[] contentsList = (String[])session.getAttribute("contentsList");
		int index = (int)session.getAttribute("index");
		
		int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
		
		lookCountList[targetIndex] += 1;
		session.setAttribute("lookCountList", lookCountList);
		
	%>
	
	<%-- top --%>
	<jsp:include page="00_navigator.jsp"></jsp:include>
	<div align="center">
		<h2>게시글 정보</h2>
		<table border="1">
				<tr>
					<td align="center">번호</td>
					<td><%=numberList[targetIndex] %></td>
				</tr>
				
				<tr>
					<td align="center">작성자</td>
					<td>
						<%=writerList[targetIndex] %>
					</td>
				</tr>
				
				<tr>
					<td align="center">조회수</td>
					<td>
						<%=lookCountList[targetIndex] %>
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
						<textarea cols="30" rows="10" readonly>
							<%=contentsList[targetIndex] %>
						</textarea>
					</td>
				</tr>
			</table>
	</div>
</body>
</html>