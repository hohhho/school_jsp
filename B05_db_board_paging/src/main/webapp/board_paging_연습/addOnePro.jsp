<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
	
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	
	boolean isUpdated = false;
	
	int maxNum = 0;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/b03_db_board?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " SELECT MAX(num) FROM board_table ";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			 maxNum = rs.getInt(1);
		}
		
		sql = " INSERT INTO board_table(num, writer, title, contents) VALUES(?, ?, ?, ?) ";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, maxNum+1);
		pstmt.setString(2, writer);
		pstmt.setString(3, title);
		pstmt.setString(4, contents);
		
		int result = pstmt.executeUpdate();
		
		if(result > 0){
			isUpdated = true;
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
		<%if(isUpdated){ %>
		<h2>게시글 추가 완료!!</h2>	
		<%}else{ %>
		<h2>실패...</h2>
		<%} %>
	</div>

</body>
</html>