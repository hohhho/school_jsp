<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%

		int size = 1000;
		String[] accountList = new String[size];
		String[] idList = new String[size];
		String[] pwList = new String[size];
		String[] nameList = new String[size];
		int[] balanceList = new int[size];
		int count = 0;
	%>
	
	<%
	Connection conn = null;	
	PreparedStatement pstmt = null;	
	ResultSet rs = null;

	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = "SELECT * FROM atm_user";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
	
		while(rs.next()){
			accountList[count] =  rs.getString(1);
			idList[count] = rs.getString(2);
			pwList[count] = rs.getString(3);
			nameList[count] = rs.getString(4);
			balanceList[count] = rs.getInt(5);
			
			count += 1;
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
        <h3>전체목록</h3>

        <table border="1">
			<tr align="center">	
                <td width="50px">번호</td>
				<td width="250px">계좌번호</td>
                <td width="250px">아이디</td>
				<td width="150px">비밀번호</td>
				<td width="150px">회원이름</td>
                <td width="250px">예금액</td>
			</tr>		
        <%			
			for(int i = 0; i< count; i++){				
        %>
            
            <tr align="center">
                <td><%= i + 1%></td>
                <td><%= accountList[i] %></td>
                <td><%= idList[i] %></td>
                <td><%= pwList[i] %></td>
                <td><%= nameList[i] %></td>
                <td><%= balanceList[i] %></td>
                
            </tr>
        <%
            }
        %>
		</table>
     


    </div>
