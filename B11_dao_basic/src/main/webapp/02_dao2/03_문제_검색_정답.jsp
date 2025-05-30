
<%@page import="db02.MemberDAO"%>
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

		/*
			[문제]
				번호가 1002 인 회원의 아이디 비밀번호 이름을 출력하시오.
			[정답]
				abcd 1234 박대길
		*/
		
		MemberDAO.instance.selectTest03();   
		
		
	%>
</body>
</html>