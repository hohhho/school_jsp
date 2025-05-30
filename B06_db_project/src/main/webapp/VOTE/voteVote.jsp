<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
		int voteSize = 0;
		String voteTitle = "";
		
	
		int size = 1000;
		int [] voteNumberList = new int[size];
		String [] voteInfoList =  new String[size];
		int [] voteCountList = new int[size];
		
		int index = 0;
			
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
		
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = " SELECT * FROM vote_info";
			pstmt = conn.prepareStatement(sql);
		
			
			rs = pstmt.executeQuery();
			while(rs.next()){
				voteNumberList[index] =  rs.getInt(1);
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
        <h3>투표리스트</h3>
        <%if(voteSize > 0){ %>
   		  	<h3> <%= voteTitle%></h3>
	        <form action="voteVotePro.jsp">
	            <table border="1">   
	                <tr>
	                	<td></td>
	                	<td>종류</td>
	                	<td>개수</td>
	                </tr>
	                <%for(int i = 0; i < voteSize; i++){%>
	                <tr>	
	                	<%if(i == 0){ %>
	                     	<td><input checked type="radio" name="number" value="<%=voteNumberList[i] %>"></td>
	                     <%} else{%>
	                   	 	<td><input  type="radio" name="number" value="<%=voteNumberList[i] %>"></td>
	                     <%} %>
	                     <td ><%=voteInfoList[i]%></td>   
	                     <td ><%=voteCountList[i]%></td> 
	                </tr>
	                <%}%>
	                <tr>
	                    <td colspan="4"><input type="submit" value="투표하기"></td>             
	                </tr>
	            </table>
	        </form>
        <%} %>
    </div>
