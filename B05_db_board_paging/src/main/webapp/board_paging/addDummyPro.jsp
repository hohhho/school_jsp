<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	int no = 0;
	
	
	
	Connection conn = null;	
	PreparedStatement pstmt = null;	
	ResultSet rs = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_boardbasic?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " SELECT MAX(boardNo) FROM board ";
		pstmt = conn.prepareStatement(sql);
		
		
		rs = pstmt.executeQuery();
		if(rs.next()){
			no = rs.getInt(1) + 1;
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
	
	for(int i = 0; i < 10; i++){
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_boardbasic?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = " INSERT INTO board  VALUES( ? , ? , ? , ? , 0);";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.setString(2, "작성자" + no);
			pstmt.setString(3, "제목" + no);
			pstmt.setString(4, "내용" + no);
			
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
		
		no += 1;
		
	}
	
%>
	<jsp:include page="boardHeader.jsp"></jsp:include>
	

	<div align="center">
			<h1>더미 게시글 10개 추가</h1>
	</div>