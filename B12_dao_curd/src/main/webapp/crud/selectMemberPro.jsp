<%@page import="db01.MemberDAO"%>
<%@page import="db01.Member"%>
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
		

		String str = request.getParameter("memberNumber"); 
			int number = Integer.parseInt(str); // int는 형변환을 해야한다. 
		Member member = MemberDAO.instance.selectMemberPro(number);
		
		
	%>
	
	<h3>검색결과</h3>
	<% if(member != null){%>
	
		<%=member.getNumber() %>
		<%=member.getName() %>
	<%}else{ %>
		회원정보가 없습니다. 
	<%} %>
	
	
	<a href="selectMember.jsp">되돌아가기</a>
</body>
</html>