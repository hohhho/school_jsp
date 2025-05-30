
<%@page import="db02.Board"%>
<%@page import="db02.BoardDAO2"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
		ArrayList<Board> boardList = BoardDAO2.instance.getBoardList();
		
	%>
	
	<jsp:include page="boardHeader.jsp"></jsp:include>
	
	<div align="center">
		<h1>전체게시글 <%= boardList.size() %>개</h1>
		
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>삭제</th>
			</tr>
		<%	for(int i=0; i<boardList.size(); i++) {	%>
			<tr>
				<td><%= boardList.get(i).getNo() %></td>		
				<td>
					<a href="getBoardInfo.jsp?no=<%= boardList.get(i).getNo() %>"><%= boardList.get(i).getSubject() %></a>
				</td>		
				<td><%= boardList.get(i).getWriter() %></td>	
				<td align="center"><%=  boardList.get(i).getReadcount() %></td>	
				<td>
					<button onclick="window.location.href='deleteBoardPro.jsp?no=<%= boardList.get(i).getNo() %>'">삭제하기</button>
				</td>	
			</tr>
		<%	} %>
			
		</table>
	</div>
		
