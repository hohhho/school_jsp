<%@page import="model.Board"%>
<%@page import="java.util.ArrayList"%>
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
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	ArrayList<Board> boardList = new ArrayList<>();
	int boardCount = 0;
	
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/b03_db_board?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " SELECT  * FROM board_table";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			int num = rs.getInt(1);
			String title = rs.getString(2);
			String writer = rs.getString(3);
			int lookCount = rs.getInt(4);
			String contents = rs.getString(5);
			
			Board temp = new Board(num, title, writer, lookCount, contents);
			
			boardList.add(temp);
			boardCount++;
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
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
	
	// ** 페이징 ** 
	
	// 한 페이지에 보여줄 게시글 수
	int pageSize = 10;	
	
	// 현재 페이지 번호
	Object pageAttri = session.getAttribute("currentPage");
	int currentPage = 1;
	if(pageAttri != null){
		currentPage = (int)pageAttri;
	}
	
	// 전체 게시글 수
	int totalBoard = boardCount;
	
	// 총 페이지 수
	int totalPage = (int)Math.ceil((double)totalBoard/pageSize);
	
	// 한번에 보여줄 페이지 버튼 수, 시작 버튼, 끝 버튼
	int pagingButtonCount = 5;
	int startButton = (currentPage - 1) / pagingButtonCount * pagingButtonCount + 1;
	int endButton = startButton + pagingButtonCount;
	
	// 마지막 버튼
	int lastButton = totalBoard / pageSize;
	if(totalBoard % pageSize > 0){
		lastButton += 1;
	}
	if(endButton > lastButton){
		endButton = lastButton;
	}
	
	
	// 현재 페이지의 시작/끝 인덱스
	int startIndex = (currentPage -1) * pageSize;
	int endIndex = startIndex + pageSize;
	if(endIndex > totalBoard){
		endIndex = totalBoard;
	}
	
	
	// 
	
%>

	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>페이징 리스트</h2>
		<h3>총 <%= boardCount%>개 게시글</h3>
		<table border="1">
			<tr align="center">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>삭제하기</th>
			</tr>
			
			<%for(int i=startIndex; i<endIndex; i++){ %>
			<tr align="center">
				<td width="70px"><%=boardList.get(i).getNum() %></td>
				<td width="150px"><a href="boardInfo.jsp?targetIndex=<%=i%>"><%=boardList.get(i).getTitle() %></a></td>
				<td width="100px"><%=boardList.get(i).getWriter() %></td>
				<td width="50px"><%=boardList.get(i).getLookCount() %></td>
				<td width="100px">
				<button onclick="window.location.href='deleteOne.jsp?targetNum=<%=boardList.get(i).getNum()%>'">삭제</button>
				</td>
			</tr>
			<%} %>
			
		</table>
		<br>
		
		<table>
			<tr>
				<%if(startButton > 1){ %>
				<td><button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%=startButton -1%>'">이전</button></td>
				<%} %>
				
				<%for(int i=startButton; i<=endButton; i++){ %>
				<td><button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%=i%>'"><%=i %></button></td>
				<%} %>
				
				<%if(endButton < lastButton){ %>
				<td><button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%=endButton%>'">이후</button></td>
				<%} %>
			</tr>
		</table>
	</div>
</body>
</html>