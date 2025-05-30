<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String voteTitle = "";
		int voteSize = 0;
		
		
		
		
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
	
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = " SELECT * FROM vote_title ";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()){
				voteTitle = rs.getString(1);
				voteSize = rs.getInt(2);
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
		
		int[] voteNumberList = new int[voteSize];
		String[] voteInfoList = new String[voteSize];	
		int[] voteCountList = new int[voteSize];
		int index = 0;
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = " SELECT * FROM vote_info ";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()){
				voteNumberList[index] = rs.getInt(1);
				voteInfoList[index] = rs.getString(2);
				voteCountList[index] = rs.getInt(3);
				index += 1;
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
		
		
	%>
	<jsp:include page="voteHeader.jsp"/>
 	<div align="center">
        <h3>투표진행상황</h3>
       		<h3> <%= voteTitle%></h3>
            <table border="1">   
            
                <tr>
                    <td width="150">항목 </td>
                    <td width="50" align="center">개수 </td>
                </tr>
                <%for(int i = 0; i < voteSize; i++){%>
	                <tr>
	                    <td ><%=voteInfoList[i]%></td>             
	                    <td align="center"><%=voteCountList[i]%></td>             
	                </tr>
	                
                <%}%>                    
            </table>
    </div>
</body>
</html>