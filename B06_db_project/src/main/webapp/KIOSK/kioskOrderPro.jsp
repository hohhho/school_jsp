<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	int orderCount = Integer.parseInt(request.getParameter("orderCount"));
	int number = (int)session.getAttribute("number");
	String orderName = (String)session.getAttribute("orderName");
	int orderPrice = (int)session.getAttribute("orderPrice");

	int check = 0;
	int state = 0; // [1주문완료][2수량부족]
	Connection conn = null;	
	PreparedStatement pstmt = null;	
	ResultSet rs = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " SELECT count(*) FROM kiosk_menu WHERE menu_count >= ? and menu_number = ? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, orderCount);
		pstmt.setInt(2, number);
		rs = pstmt.executeQuery();
	
		while(rs.next()){
			
			check = rs.getInt(1);
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
	
	if(check > 0){
		state = 1;
		
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "INSERT INTO kiosk_order VALUES(? , ? , ? , ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, orderName);
			pstmt.setInt(2, orderPrice);
			pstmt.setInt(3, orderCount);
			int total = orderPrice * orderCount;
			pstmt.setInt(4, total );
			int r = pstmt.executeUpdate();
		
			
					
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
		

		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "UPDATE kiosk_menu SET menu_count = menu_count - ? WHERE menu_number = ? ";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, orderCount);
			pstmt.setInt(2, number);
			
			int r = pstmt.executeUpdate();
		
			
					
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
		state = 2;
	}
	
			
%>

<jsp:include page="kioskHeader.jsp"/>
<div align="center">
	<%if(state == 1) {%>
		 <h1> 주문 완료</h1>
	<%}else if(state == 2){%>
	 	<h1> 수량 부족</h1>
	<%} %>

</div>

