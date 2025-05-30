<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%

	
		String log = (String)session.getAttribute("log");
		int deposit = Integer.parseInt(request.getParameter("deposit"));
		

		int state = 0; // 1은성공, 2는 음수
		if(deposit < 0){
			state = 2;
		}else{
			state = 1;
			
			Connection conn = null;	
			PreparedStatement pstmt = null;	
			ResultSet rs = null;
		
			try{
				String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
				String dbId = "root";
				String dbPw = "root";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
				
				// Set 은 , 로 연결한다. 
				String sql = " UPDATE atm_user SET atm_user_balance = atm_user_balance + ?  WHERE atm_user_id = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, deposit);
				pstmt.setString(2, log);
			
				int result = pstmt.executeUpdate();
				
						
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
	
	<div align="center">
	<jsp:include page="atmHeader.jsp"/>
	
	<%if(state == 2) {%>
		<h1>잘못된 입금액</h1>
		
	<%}else if(state == 1){ %>
				
        <h1>입금 성공</h1>
     <%} %>


    </div>
