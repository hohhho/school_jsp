<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		
	
		String log = (String)session.getAttribute("log");
		
		int withdraw = Integer.parseInt(request.getParameter("withdraw"));
		
		
		
		int size = 1;
		String[] accountList = new String[size];
		String[] idList = new String[size];
		String[] pwList = new String[size];
		String[] nameList = new String[size];
		int[] balanceList = new int[size];
		
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
	
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT * FROM atm_user WHERE atm_user_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, log);
			rs = pstmt.executeQuery();
			while(rs.next()){
				accountList[0] =  rs.getString(1);
				idList[0] = rs.getString(2);
				pwList[0] = rs.getString(3);
				nameList[0] = rs.getString(4);
				balanceList[0] = rs.getInt(5);				
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
		
		
		int state = 0; // [1입금성공] [2잔액부족] [3음수]
				
		int balance = balanceList[0] - withdraw;
				
		if(withdraw < 0){
			state = 3;
		}else if(balance >= 0){
			balanceList[0] -= withdraw;		
			state = 1; // 입금성공				
			
			try{
				String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
				String dbId = "root";
				String dbPw = "root";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
				
				// Set 은 , 로 연결한다. 
				String sql = " UPDATE atm_user SET atm_user_balance = ?  WHERE atm_user_id = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, balanceList[0]);
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
	
		}else{
			state = 2; // 잔액부족		
		}
		
		
		

	%>
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
	
	<% if(state == 1){ %>
				
        <h1>출금 성공</h1>
		
     <%}else if(state == 2) {%>
     
        <h1>잔액 부족</h1>
		
	<%}else if(state == 3){ %>
		 <h1>잘못된 숫자</h1>
	<%} %>
    </div>
