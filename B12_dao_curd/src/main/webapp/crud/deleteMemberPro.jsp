<%@page import="db01.MemberDAO"%>

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
		
		boolean check = MemberDAO.instance.deleteMemberPro(number);
		
	%>
	<%if(check){ %>
		회원삭제를 성공했습니다.
	<%} else{%>
		화원삭제를 실패했습니다.
	<%} %>
	<a href="deleteMember.jsp">되돌아가기</a>
	
</body>
</html>