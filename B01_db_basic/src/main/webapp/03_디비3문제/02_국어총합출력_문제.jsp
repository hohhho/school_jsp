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
		/*				
		[문제]
			국어 총합을 출력하시오.		
		[정답]
			299
		*/
				
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int korTotal = 0;
		int count = 0;
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy3?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = " SELECT sum(kor) FROM student ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
		}
	%>
	
	
	
		
</body>
</html>