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
		
	int number = Integer.parseInt(request.getParameter("number"));
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
	

		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = " UPDATE vote_info SET vote_count = vote_count + 1 WHERE vote_number = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			
			int result = pstmt.executeUpdate();
			System.out.println(result);	
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
	
	
		response.sendRedirect("voteInfoList.jsp");		
	%>

	
    
</body>
</html>