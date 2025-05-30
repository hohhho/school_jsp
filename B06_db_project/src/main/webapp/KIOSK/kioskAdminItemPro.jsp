<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    request.setCharacterEncoding("UTF-8");
	
	String itemName = request.getParameter("itemName");
	int itemPrice = Integer.parseInt(request.getParameter("itemPrice"));
	int itemCount = Integer.parseInt(request.getParameter("itemCount"));
	
	
	int itemNumber = 0;
	Connection conn = null;	
	PreparedStatement pstmt = null;	
	ResultSet rs = null;

	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = "SELECT MAX(menu_number) FROM kiosk_menu  ";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		while(rs.next()){
			itemNumber = rs.getInt(1);
			
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
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " INSERT INTO kiosk_menu  VALUES(? , ? , ? , ? ) ";
		pstmt = conn.prepareStatement(sql);
		
	
		itemNumber += 1; // 마지막번호 + 1;
		pstmt.setInt(1, itemNumber );
		pstmt.setString(2, itemName);
		pstmt.setInt(3, itemPrice);
		pstmt.setInt(4, itemCount);
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
	
   	%>
    
     
	<jsp:include page="kioskHeader.jsp"/>
    <div align="center">
        <h1>아이템 추가 성공</h1>
    </div>
    
    
    