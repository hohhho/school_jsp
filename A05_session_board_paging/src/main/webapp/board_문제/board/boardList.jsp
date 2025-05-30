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
		int lastIndex = (int)session.getAttribute("lastIndex");
	%>
	
	<%-- header --%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>전체 게시글 <%=lastIndex%>개</h2>
		<table border="1">
			<%if(lastIndex == 0){ %>
				<h3>게시글이 없습니다</h3>
			<%} else{%>
				<tr>
					<td align="center">번호</td>
					<td align="center">제목</td>
					<td align="center">작성자</td>
					<td align="center">조회수</td>
					<td align="center">삭제</td>
				</tr>
				
				<%for(int i = 0; i < lastIndex; i++){ %>
					<tr>
						<td align="center"><%=numList[i] %></td>
						<td align="center">
							<a href="boardInfo.jsp?targetIndex=<%=i%>" style="text-decoration: none;"><%=titleList[i] %></a>
						</td>
						<td align="center"><%=writerList[i] %></td>
						<td align="center"><%=viewCountList[i] %></td>
						<td align="center">
							<button onclick="window.location.href='deleteOneBoard.jsp?targetIndex=<%=i%>'">삭제하기</button>
						</td>
					</tr>
				<%} %>
			<%} %>
		</table>
	</div>
</body>
</html>