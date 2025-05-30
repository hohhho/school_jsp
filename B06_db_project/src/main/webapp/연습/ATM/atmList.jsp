<%@page import="atmMember.ATM_member"%>
<%@page import="java.util.ArrayList"%>
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
	
	// memberList 생성
	ArrayList<ATM_member> memberList = new ArrayList<>();
	
	// 멤버 수
	int memberCount = 0;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " SELECT * FROM atm_member ";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			String account = rs.getString(1);
			String id = rs.getString(2);
			String pw = rs.getString(3);
			String name = rs.getString(4);
			int balance = rs.getInt(5);
			
			ATM_member temp = new ATM_member(account, id, pw, name, balance);
			
			memberList.add(temp);
			
			memberCount++;
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
		<h2>회원 전체목록</h2>
		<table border="1">
			<tr align="center">
				<td width="50px">번호</td>
				<td width="150px">계좌번호</td>
				<td width="100px">아이디</td>
				<td width="100px">비밀번호</td>
				<td width="100px">회원이름</td>
				<td width="150px">예금액</td>
			</tr>
			
			<%for(int i=0; i<memberCount; i++){ %>
			
			<tr align="center">
				<td><%=i+1 %></td>
				<td><%=memberList.get(i).getAccount() %></td>
				<td><%=memberList.get(i).getId() %></td>
				<td><%=memberList.get(i).getPw() %></td>
				<td><%=memberList.get(i).getName() %></td>
				<td><%=memberList.get(i).getBalance() %></td>
			</tr>
			
			<%} %>
		</table>
	</div>
</body>
</html>