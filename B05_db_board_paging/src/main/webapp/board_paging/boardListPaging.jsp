<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
		int size = 1000;
		int[] noList = new int[size];
		String[] writerList = new String[size];
		String[] subjectList = new String[size];
		String[] contentsList = new String[size];
		int [] readCountList = new int[size];
		int count = 0;
		
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
	
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/b03_db_board?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT * FROM board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				noList[count] =  rs.getInt(1);
				writerList[count] = rs.getString(2);
				subjectList[count] = rs.getString(3);
				contentsList[count] = rs.getString(4);
				readCountList[count] = rs.getInt(5);
				
				count += 1;
			}		
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			// [중요] db 사용후엔 반드시 닫아줘야한다. 		
			if(conn != null){
				conn.close();			
			}
			if(pstmt != null){
				pstmt.close();	
			}
			if(rs != null){
				rs.close();
			}
		}
		
		//-----------------------------------------------------------
		
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
				<td><%= noList[i] %></td>		
				<td>
					<a href="boardInfo.jsp?no=<%= noList[i] %>"><%= subjectList[i] %></a>
				</td>		
				<td><%= writerList[i] %></td>	
				<td align="center"><%= readCountList[i] %></td>	
				<td>
					<button onclick="window.location.href='deleteBoardPro.jsp?no=<%= noList[i] %>'">삭제하기</button>
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
		
