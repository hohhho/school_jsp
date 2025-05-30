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
<style>
	
</style>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
	}
	
%>

	<div align="center">
		<h1>ATM</h1>
		<table border="1">
			<tr>
				<td><a href="atmMain.jsp">ATM 메인</a></td>
				<td><a href="atmList.jsp">전체목록</a></td>
				
				<td><a href="atmJoin.jsp">회원가입</a></td>
				<td><a href="atmLogin.jsp">로그인</a></td>
				<td><a href="atmMain.jsp">전체목록</a></td>
				
				<td><a href="atmIndex.jsp">ATM 초기화</a></td>
				<td><a href="../index.jsp">처음으로</a></td>
			</tr>
		</table>
	</div>
</body>	
</html>