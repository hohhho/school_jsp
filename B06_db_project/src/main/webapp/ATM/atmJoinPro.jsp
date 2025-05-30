<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("accountId");
		String pw = request.getParameter("accountPassword");
		String name = request.getParameter("accountName");
		
		Random ran = new Random();
		String randomAccount = "";
		int r = ran.nextInt(1000) + 100;
		randomAccount += r;	
		randomAccount += "-";
		r = ran.nextInt(1000) + 100;
		randomAccount += r;	
		
		
		int check = 0;
		
		
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
	
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT COUNT(*) FROM atm_user WHERE atm_user_id=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int count = rs.getInt(1);
				if(count > 0){
					check = 1;				
				}
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
		
		if(check == 0){
			
			try{
				String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
				String dbId = "root";
				String dbPw = "root";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
				
				String sql = " INSERT INTO atm_user  VALUES(? , ? , ? , ? , ?) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, randomAccount);
				pstmt.setString(2, id);
				pstmt.setString(3, pw);
				pstmt.setString(4, name);
				pstmt.setInt(5, 0);
				pstmt.executeUpdate();
				
						
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
		}
		
		%>
	
 
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
		<%if(check == 0){ %>
			
			<h1>회원가입 성공</h1>
				
		<%}else if(check == 1){ %>
			<h1>아이디 중복</h1>
			
		<%} %>
	</div>
