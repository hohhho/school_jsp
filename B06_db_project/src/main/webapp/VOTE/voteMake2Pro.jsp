
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String voteTitle = (String)session.getAttribute("voteTitle");
		int voteSize = (Integer)session.getAttribute("voteSize");
			
		String[] voteInfoList = new String[voteSize];
		int[] voteCountList = new int[voteSize];
		for(int i = 0; i < voteSize; i++){
			String str = "voteInfo" + i;
			voteInfoList[i] = request.getParameter(str);
		}

		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
		
		for(int i = 0; i < voteSize; i++){
			try{
				String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
				String dbId = "root";
				String dbPw = "root";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
				
				String sql = " INSERT INTO vote_info  VALUES( ? , ? , 0 ) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, i + 1);
				pstmt.setString(2, voteInfoList[i]);
				
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
		}
	%>
	
	<jsp:include page="voteHeader.jsp"/>
    <div align="center">
        <h1>투표 작성 완료 </h1>
    </div>
	