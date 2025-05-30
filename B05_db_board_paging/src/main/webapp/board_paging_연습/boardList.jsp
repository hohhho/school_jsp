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
	
	ArrayList<Board> BoardList = new ArrayList<>();
	
	int boardCount = 0;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/b03_db_board?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " SELECT num, title, writer, look_count FROM board_table ";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			Board temp = new Board();
			temp.setNum(rs.getInt(1));
			temp.setTitle(rs.getString(2));
			temp.setWriter(rs.getString(3));
			temp.setLookCount(rs.getInt(4));
			
			BoardList.add(temp);
		}
		
		sql = " SELECT COUNT(*) FROM board_table ";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			boardCount = rs.getInt(1);
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
	
%>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>게시글 목록</h2>
		<h3>총 <%= boardCount%>개 게시글</h3>
		<table border="1" width="800px">
			<tr align="center">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>삭제하기</th>
			</tr>
			
			<%for(Board k : BoardList){ %>
			<tr align="center">
				<td><%=k.getNum() %></td>
				<td><a href="boardInfo.jsp"><%=k.getTitle() %></a></td>
				<td><%=k.getWriter() %></td>
				<td><%=k.getLookCount() %></td>
				<td>
				<button onclick="window.location.href='deleteOne.jsp?targetNum=<%=k.getNum()%>'">삭제</button>
				</td>
			</tr>
			<%} %>
		</table>
		
	</div>

</body>
</html>