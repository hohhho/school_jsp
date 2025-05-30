<%@page import="board.BoardDAO"%>
<%@page import="board.Board"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		request.setCharacterEncoding("UTF-8");
	
		String writer = request.getParameter("writer");
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
		
		Board board = new Board();
		board.setWriter(writer);
		board.setSubject(subject);
		board.setContent(contents);
		
		int check = BoardDAO.instance.addBoardPro(board);
	%>
	
	<jsp:include page="boardHeader.jsp"></jsp:include>
	

	<div align="center">
		<%if(check == 1){ %>
			<h1>게시글 입력 성공</h1>
		<%}else{ %>
			<h1>게시글 입력 실패</h1>
		<%} %>
	</div>
