<%@page import="db02.BoardDAO2"%>
<%@page import="db02.Board"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
		request.setCharacterEncoding("UTF-8");
	
		String writer = request.getParameter("writer");
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
				
		/*
			(1) 번호는 아직모르고, (2) reacount 는 0이다. 
		*/
		Board board = new Board(0, writer, subject, contents , 0);
			
		boolean check = BoardDAO2.instance.addBoardPro(board);

	%>
	
	<jsp:include page="boardHeader.jsp"></jsp:include>
	

	<div align="center">
		<%if(check == true){ %>
			<h1>게시글 입력 성공</h1>
		<%}else{ %>
			<h1>게시글 입력 실패</h1>
		<%} %>
	</div>
