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
	
	int targetNum = Integer.parseInt(request.getParameter("targetNum"));
	
	boolean isDeleted = false;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/b03_db_board?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " DELETE FROM board_table WHERE num=?";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1,targetNum);
		
		int result = pstmt.executeUpdate();

		if(result == 1){
			isDeleted = true;
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
		<%if(isDeleted == true){ %>
		<h2>삭제 완료!!</h2>
		<%} else{%>
		<h2>삭제 실패...</h2>	
		<%} %>
	</div>

</body>
</html>