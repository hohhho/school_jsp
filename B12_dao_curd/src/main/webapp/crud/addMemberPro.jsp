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
		request.setCharacterEncoding("utf-8");
		
		String str = request.getParameter("memberNumber");
		int number = Integer.parseInt(str);
		String name = request.getParameter("memberName");
		Member member = new Member(number, name);
		
		boolean check = MemberDAO.instance.addMemberPro(member);
		
	%>
	<%if(check){ %>
		회원등록을 성공했습니다.
	<%} else{%>
		화원등록을 실패했습니다.
	<%} %>
	<a href="addMember.jsp">되돌아가기</a>
	
</body>
</html>