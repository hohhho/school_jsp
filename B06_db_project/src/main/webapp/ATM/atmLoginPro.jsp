<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
				
		
			String id = request.getParameter("accountId");
			String pw = request.getParameter("accountPassword");
			
			int check = 0;
			int state = 0;
			Connection conn = null;	
			PreparedStatement pstmt = null;	
			ResultSet rs = null;
		
			try{
				String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
				String dbId = "root";
				String dbPw = "root";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
				
				String sql = " SELECT COUNT(*) FROM atm_user WHERE atm_user_id=? and atm_user_pw=? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
				rs = pstmt.executeQuery();
				while(rs.next()){
					int count = rs.getInt(1);
					if(rs.getInt(1) > 0){
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
			
			
			
			if(check >= 1) {
				session.setAttribute("log", id);
				state = 1;
			}else{
				session.setAttribute("log", null);
				state = 2;
			}
		%>
	


	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
		<%if(state == 1) {%>
			<h1>로그인 성공</h1>		
			
		<%}else if(state == 2){%>
			<h1>로그인 실패</h1>
		<%}%>
	</div>