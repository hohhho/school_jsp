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
	// 1) db 연결, 쿼리문 저장
	Connection conn = null;
	
	// 2) conn에게서 쿼리문을 넘겨 받고, 쿼리문 실행
	PreparedStatement pstmt = null;
	
	// 3) 쿼리문이 실행되면 db에서 자바로 다시 데이터를 보내주는데, 그 데이터를 저장하고 있음
	ResultSet rs = null;
	
	try{
		// 연결
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy1?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		// 명령어 보내기
		String sql = "SELECT * FROM basic WHERE a=10";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();	// 실행
		
		rs.next();
		
		int a = rs.getInt(1);
		double b = rs.getDouble(2);
		String c = rs.getString(3);
		
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		
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
	
</body>
</html>