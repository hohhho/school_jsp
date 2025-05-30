<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
	int size = 1000;
	
	
	String[] idList = new String[size];	
	String[] pwList =  new String[size];
	String[] nameList =  new String[size];
	String[] genderList =  new String[size];
	
	int count = 0;
	
	Connection conn = null;	
	PreparedStatement pstmt = null;	
	ResultSet rs = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_member?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = "SELECT * FROM member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
			idList[count] = rs.getString(1);
			pwList[count] = rs.getString(2);
			nameList[count] = rs.getString(3);
			genderList[count] = rs.getString(4);
			
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
	
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<div align="center">
		<h1>관리자 페이지(회원 정보 확인하기)</h1>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이름</td>
				<td>성별</td>
				<td>삭제</td>
			</tr>
		
		<%
			for(int i=0; i<count; i++) {
		%>
			<tr>
				<td><%= idList[i] %></td>
				<td><%= pwList[i] %></td>
				<td><%= nameList[i] %></td>
				<td><%= genderList[i] %></td>
				<td><input type="button" value="삭제" onclick="location.href='adminUserDeletePro.jsp?id=<%= idList[i] %>'"></td>
			</tr>
		<%		
			}
		%>
		</table>	
	</div>
