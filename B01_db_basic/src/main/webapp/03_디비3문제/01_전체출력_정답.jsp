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
		/*
		[문제]
			회원전체의 데이터를 브라우저화면에 출력하시오.					
		*/
		/*
		[정답]
				1001 100 20 32
				1002 40 43 12
				1003 60 21 42
				1004 76 54 55
				1005 23 11 76
		*/
		
		
		int size = 1000;
		int[] numberList = new int[size];
		int[] korList = new int[size];
		int[] mathList = new int[size];
		int[] engList = new int[size];
		int count = 0;
	
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
			
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy3?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT * FROM student";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				numberList[count] = rs.getInt(1) ;
				korList[count] = rs.getInt(2) ;
				mathList[count] = rs.getInt(3) ;
				engList[count] = rs.getInt(4) ;
				
				System.out.println(rs.getInt(1) + " " + rs.getInt(2) + " " + rs.getInt(3) + " " + rs.getInt(4)  ); 
				count += 1;
			}
			
			
			if(count == 0){
				System.out.println("검색데이터가 없습니다.");
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
	<div align="center">
		<h3>학생정보</h3>
		<table border="1">
			<tr>
				<td>번호</td>
				<td>국어</td>
				<td>수학</td>
				<td>영어</td>
			</tr>
		<% for(int i = 0; i < count; i++) { %>
			<tr>
				<td><%= numberList[i] %></td>
				<td><%= korList[i] %></td>
				<td><%= mathList[i] %></td>
				<td><%= engList[i] %></td>
			</tr>
		<%	} %>
		</table>
	</div>
		
</body>
</html>