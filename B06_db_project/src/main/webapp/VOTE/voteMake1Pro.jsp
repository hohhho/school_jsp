<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		
	
		String voteTitle = request.getParameter("voteTitle");
		int voteSize = Integer.parseInt(request.getParameter("voteSize"));
		
		session.setAttribute("voteSize", voteSize);
		session.setAttribute("voteTitle", voteTitle);
		
		
		session.setAttribute("voteCheck", "true");
		
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
	
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = " INSERT INTO vote_title VALUES(? , ?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, voteTitle);
			pstmt.setInt(2, voteSize);
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


		
		response.sendRedirect("voteMake2.jsp");
	%>
