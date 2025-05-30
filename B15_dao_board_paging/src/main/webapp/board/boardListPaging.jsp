<%@page import="board.BoardDAO"%>
<%@page import="board.Board"%>
<%@page import="java.util.ArrayList"%>
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
	
	<%
	
	Object obj = session.getAttribute("currentPage");
	int currentPage =(int)obj;  	
	
	 obj = session.getAttribute("viewCount");
	int viewCount = (int)obj; 		
	
	 obj = session.getAttribute("pagingButtonCount");
	int pagingButtonCount = (int)obj; 	
	
	
	int startIndex = (currentPage - 1) * viewCount;
	int endIndex = startIndex + viewCount;
	if(endIndex >= count){
		endIndex = count;
	}
	
	System.out.print("게시글인덱스 : " + startIndex + " ");
	System.out.println(endIndex);
	//-----------------------------------------------------------

	int startButton = 0;
	int endButton = 0;
	int lastButton = 0;
	/*
		1, 2, 3 => 1, 3
		4, 5, 6 => 4, 6
	*/
	/*
		 0 / 3 ==> 0 => 1
		 1 / 3 ==> 0 => 1
		 2 / 3 ==> 0 => 1
		 3 / 3 ==> 1 => 4
		 4 / 3 =>  1 => 4
		 5 / 3 ==> 1 => 4
	*/
	
	startButton = (currentPage - 1) / pagingButtonCount * pagingButtonCount; 	
	endButton = startButton + pagingButtonCount;
	lastButton = count / viewCount;
	if(count % viewCount > 0){
		lastButton += 1;
	}
	if(endButton > lastButton){
		endButton = lastButton;
	}
	
	System.out.print("startButton : " + startButton + " ");
	System.out.print("endButton : " + endButton + " ");
	System.out.println("lastButton : " + lastButton + " ");
	
	startButton += 1;
	endButton += 1;
	lastButton += 1;
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
		<%	for(int i=startIndex; i<endIndex; i++) {	%>
			<tr>
				<td><%= boardList.get(i).getNo() %></td>		
				<td>
					<a href="boardInfo.jsp?no=<%= boardList.get(i).getNo() %>"><%=  boardList.get(i).getSubject() %></a>
				</td>		
				<td><%= boardList.get(i).getWriter() %></td>	
				<td align="center"><%=  boardList.get(i).getReadCount() %></td>	
				<td>
					<button onclick="window.location.href='deleteBoardPro.jsp?no=<%=  boardList.get(i).getNo()%>'">삭제하기</button>
				</td>	
			</tr>
		<%	} %>
			
		</table>
		
		<br>
		<%if(startButton > 1){ %>
				<button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%= startButton-1 %>'">이전</button>
		<%} %>
		
		<%for(int i = startButton; i < endButton; i++) {%>
			<button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%= i %>'"><%= i %></button>
		<%} %>
		<%if(endButton < lastButton){ %>
				<button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%= endButton%>'">이후</button>
		<%} %>
		
		<br>
		<h1>테스트 버튼</h1>
		<%for(int i = 1; i <= 20; i++) {%>
			<button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%= i%>'"><%= i%></button>
		<%} %>
		
	</div>
		
