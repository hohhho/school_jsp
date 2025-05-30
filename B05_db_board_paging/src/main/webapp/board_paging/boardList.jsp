<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
		int size = 1000;
		int[] noList = new int[size];
		String[] writerList = new String[size];
		String[] subjectList = new String[size];
		String[] contentsList = new String[size];
		int [] readCountList = new int[size];
		int count = 0;
		
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
	
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_boardbasic?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT * FROM board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				noList[count] =  rs.getInt(1);
				writerList[count] = rs.getString(2);
				subjectList[count] = rs.getString(3);
				contentsList[count] = rs.getString(4);
				readCountList[count] = rs.getInt(5);
				
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
	
	<jsp:include page="boardHeader.jsp"></jsp:include>
	
	<div align="center">
		<h1>전체게시글 <%= count %>개</h1>
		
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>삭제</th>
			</tr>
		<%	for(int i=0; i<count; i++) {	%>
			<tr>
				<td><%= noList[i] %></td>		
				<td>
					<a href="boardInfo.jsp?no=<%= noList[i] %>"><%= subjectList[i] %></a>
				</td>		
				<td><%= writerList[i] %></td>	
				<td align="center"><%= readCountList[i] %></td>	
				<td>
					<button onclick="window.location.href='deleteBoardPro.jsp?no=<%= noList[i] %>'">삭제하기</button>
				</td>	
			</tr>
		<%	} %>
			
		</table>
	</div>
		
