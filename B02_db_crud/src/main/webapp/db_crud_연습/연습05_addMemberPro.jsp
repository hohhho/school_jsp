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
		int memNum = Integer.parseInt(request.getParameter("memberNumber"));
		String memName = request.getParameter("memberName");
		boolean check = false;
		
		int size = 1000;
		int[] numberList = new int[size];
		String[] nameList = new String[size];
		int count = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_crud?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw	= "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			// 멤버 추가 쿼리
			String sql = " INSERT INTO member VALUES(?, ?) ";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNum);
			pstmt.setString(2, memName);
			
			int result = pstmt.executeUpdate();
			
			if(result == 1){
				check = true;
			}
			
			// 전체 테이블 출력 쿼리
			sql = " SELECT * FROM member ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				numberList[count] = rs.getInt(1);
				nameList[count] = rs.getString(2);
				count++;
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if( conn != null){
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
	
	<%if(check == true){ %>
		<div>
			<span>추가가 완료되었습니다.</span>
			<a href="연습05_addMember.jsp">돌아가기</a>
		</div>
		<hr>
		<div>
			<table border="1">
				<tr>
					<td>member_number</td>
					<td>member_name</td>
				</tr>
				<%for(int i=0; i<count; i++){ %>
				<tr>
					<td><%=numberList[i] %></td>
					<td><%=nameList[i] %></td>
				</tr>
				<%} %>
			</table>
		</div>
	<%} else{%>
		<span>추가 실패</span>
	<%} %>
</body>
</html>