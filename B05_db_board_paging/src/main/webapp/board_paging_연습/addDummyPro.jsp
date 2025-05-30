<%@page import="model.Board" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
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
	
	// INSERT 성공을 알려줄 check 생성
	boolean check = false;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/b03_db_board?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " SELECT MAX(num) FROM board_table ";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		int lastNum = 0;
		int start = 0;
		int end = 0;
		
		
		if(rs.next()){
			lastNum = rs.getInt(1);
			start = lastNum+1;
			end = start+10;
		}else{
			end = 10;
		}
		
		
		for(int i=start; i<end; i++){
			
			String tpTitle = "제목"+i;
			String tpWriter = "작성자"+i;
			int tpLookCount = 0;
			String tpContents = "내용"+i;
			
			Board temp = new Board(i, tpTitle, tpWriter, tpLookCount, tpContents);
			
			sql = " INSERT INTO  board_table VALUES(?, ?, ?, ?, ?) ";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, temp.getNum());
			pstmt.setString(2, temp.getTitle());
			pstmt.setString(3, temp.getWriter());
			pstmt.setInt(4, temp.getLookCount());
			pstmt.setString(5, temp.getContents());
			
			int result = pstmt.executeUpdate();
			if(result == 1){
				check = true;
			}
			
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
		<%if(check == true){ %>
		<h2>더미 10개 추가 성공!</h2>
		<%}else{ %>
		<h2>더미 추가 실패..</h2>
		<%} %>
	</div>

</body>
</html>