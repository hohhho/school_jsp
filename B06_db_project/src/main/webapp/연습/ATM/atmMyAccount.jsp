<%@page import="atmMember.ATM_member"%>
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
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String loginId = (String)session.getAttribute("log");
	
	String account = "";
	String id = "";
	String pw = "";
	String name = "";
	int balance = 0;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " SELECT * FROM atm_member WHERE id=? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, loginId);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			account = rs.getString(1);
			id = rs.getString(2);
			pw = rs.getString(3);
			name = rs.getString(4);
			balance = rs.getInt(5);
		}
		
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
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
	<jsp:include page="atmHeader.jsp"></jsp:include>
	<div align="center">
		<h2>계좌조회</h2>
		<table border="1">
			<tr>
				<td>계좌번호</td>
				<td>아이디</td>
				<td>비밀번호</td>
				<td>회원이름</td>
				<td>예금액</td>
			</tr>
			<tr>
				<td><%=account %></td>
				<td><%=id %></td>
				<td><%=pw %></td>
				<td><%=name %></td>
				<td><%=balance %></td>
			</tr>
		</table>
	</div>
</body>
</html>