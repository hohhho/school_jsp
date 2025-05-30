<%@page import="db01.MemberDAO"%>
<%@page import="db01.Member"%>

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
		int number = Integer.parseInt(str); 
		Member member = MemberDAO.instance.radioMemberPro(number);
		
		
	%>
	
	<h3>검색결과</h3>
	<% if(member != null){%>
	
		<%=member.getNumber() %>
		<%=member.getName() %>
	<%}else{ %>
		회원정보가 없습니다. 
	<%} %>
	
	<a href="radioMember.jsp">되돌아가기</a>
</body>
</html>