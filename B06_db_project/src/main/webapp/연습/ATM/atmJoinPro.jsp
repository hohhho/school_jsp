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
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	boolean idExist = false;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		// id 중복 확인
		String sql = " SELECT id FROM atm_member WHERE id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		
		rs = pstmt.executeQuery();
		
		// id 중복이 아니라면 회원가입
		if(rs.next()){
			idExist = true;
		}else{
			sql = " INSERT INTO atm_member(id, pw, name) VALUES(?, ?, ?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			
			pstmt.executeUpdate();
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
	<jsp:include page="atmHeader.jsp"></jsp:include>
	<div align="center">
		<%if(idExist){ %>
			<h2>회원가입 실패</h2>
			<h3>중복된 아이디입니다</h3>
		<%} else{%>
			<h2>회원가입 성공!</h2>
		<%} %>
	</div>
</body>
</html>