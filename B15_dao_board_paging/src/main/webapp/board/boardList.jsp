<%@page import="board.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		ArrayList<Board> boardList = BoardDAO.instance.getBoardList();
		int count = boardList.size();
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
				<td><%= boardList.get(i).getNo() %></td>		
				<td>
					<a href="boardInfo.jsp?no=<%= boardList.get(i).getNo() %>"><%= boardList.get(i).getSubject() %></a>
				</td>		
				<td><%= boardList.get(i).getWriter() %></td>	
				<td align="center"><%= boardList.get(i).getReadCount() %></td>	
				<td>
					<button onclick="window.location.href='deleteBoardPro.jsp?no=<%= boardList.get(i).getNo() %>'">삭제하기</button>
				</td>	
			</tr>
		<%	} %>
			
		</table>
	</div>
		
