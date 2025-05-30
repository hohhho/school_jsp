<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String log = (String)session.getAttribute("log");
	
	
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
		
	%>

	
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
				
       <h3>계좌조회</h3>
       <table border="1">
			<tr align="center">	
                <td>번호</td>
				<td width="250px">계좌번호</td>
                <td width="250px">아이디</td>
				<td width="150px">비밀번호</td>
				<td width="150px">회원이름</td>
                <td width="250px">예금액</td>
	              
			</tr>		           
	        <tr align="center">
	            <td><%= 1%></td>
	            <td><%= accountList[0] %></td>
	            <td><%= idList[0] %></td>
	            <td><%= pwList[0] %></td>
	            <td><%= nameList[0] %></td>
	            <td><%= balanceList[0] %></td>        
	        </tr>
       
		</table>
   
    </div>
