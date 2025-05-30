<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
<%

	int number = (int)session.getAttribute("number");

	
	String itemName = request.getParameter("itemName");
	int itemPrice = Integer.parseInt(request.getParameter("itemPrice"));
	int itemCount = Integer.parseInt(request.getParameter("itemCount"));
	
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
		String sql = " UPDATE kiosk_menu SET menu_name = ? , menu_price = ? , menu_count = ?  WHERE menu_number = ? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, itemName);
		pstmt.setInt(2, itemPrice);
		pstmt.setInt(3, itemCount);
		pstmt.setInt(4, number);
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
	
	
	response.sendRedirect("kioskAdminItemList.jsp");
%>
	
