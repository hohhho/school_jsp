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
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	// 로그인 상태 확인 변수
	// 1 = 성공, 2 = 해당 아이디 없음, 3 = 비밀번호 틀림
	int loginState = 0;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " SELECT id,pw FROM atm_member WHERE id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			String savedId = rs.getString(1);
			String savedPw = rs.getString(2);
			
			if(!id.equals(savedId)){
				loginState = 2;
			}else if(!pw.equals(savedPw)){
				loginState = 3;
			}else if(id.equals(savedId) && pw.equals(savedPw)){
				loginState = 1;
				session.setAttribute("log",id);
			}
		}else{
			loginState = 2;
		}
		
		System.out.println(loginState);
		
		
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
		
		<%if(loginState == 2){ %>
			<h2>로그인 실패..</h2>
			<h3>잘못된 아이디입니다</h3>
		<%} else if(loginState == 3){%>
			<h2>로그인 실패..</h2>
			<h3>잘못된 비밀번호입니다</h3>
		<%} else if(loginState == 1){%>
			<h2>로그인 성공!!</h2>
		<%} %>

	</div>
</body>
</html>