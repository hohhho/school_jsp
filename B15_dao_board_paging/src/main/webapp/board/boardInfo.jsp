<%@page import="board.BoardDAO"%>
<%@page import="board.Board"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
		int no = Integer.parseInt(request.getParameter("no"));
		Board board = BoardDAO.instance.getBoardInfo(no);
	%>
	<jsp:include page="boardHeader.jsp"></jsp:include>
	<div align="center">

		<h2>게시글 정보</h2>

		<table border="1">
			<tr>
				<th>번호</th>
				<td ><%= board.getNo() %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%= board.getWriter() %></td>
				
			</tr>
			<tr>
				<th>조회수</th>
				<td><%= board.getReadCount() %></td>
				
			</tr>
			<tr>
				<th>제목</th>
				<td >
					<%= board.getSubject() %>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td >
					<textarea rows="10" cols="30" name="contents" readonly="readonly"><%= board.getContent() %></textarea>
				</td>
			</tr>
			
		</table>
	</div>
</body>
</html>