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
		
		
		int no = Integer.parseInt(request.getParameter("no"));
		int size = 1;
		int[] noList = new int[size];
		String[] writerList = new String[size];
		String[] subjectList = new String[size];
		String[] contentsList = new String[size];
		int [] readCountList = new int[size];
		
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
	
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_boardbasic?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT * FROM board WHERE boardNo=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			while(rs.next()){
				noList[0] =  rs.getInt(1);
				writerList[0] = rs.getString(2);
				subjectList[0] = rs.getString(3);
				contentsList[0] = rs.getString(4);
				readCountList[0] = rs.getInt(5);				
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
		
		// 조회수 증가 
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_boardbasic?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = " UPDATE board SET boardReadCount = boardReadCount + 1  WHERE boardNo=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			
			readCountList[0] += 1;
				
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
	<jsp:include page="boardHeader.jsp"></jsp:include>
	<div align="center">

		<h2>게시글 정보</h2>

		<table border="1">
			<tr>
				<th>번호</th>
				<td ><%= noList[0] %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%= writerList[0] %></td>
				
			</tr>
			<tr>
				<th>조회수</th>
				<td><%= readCountList[0] %></td>
				
			</tr>
			<tr>
				<th>제목</th>
				<td >
					<%= subjectList[0] %>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td >
					<textarea rows="10" cols="30" name="contents" readonly="readonly"><%= contentsList[0] %></textarea>
				</td>
			</tr>
			
		</table>
	</div>
</body>
</html>