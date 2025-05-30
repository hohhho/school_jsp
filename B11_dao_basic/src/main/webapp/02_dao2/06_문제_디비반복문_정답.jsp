
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
				회원전체의 데이터를 출력하시오.
			
			[정답]
				1001 qwer 1234 홍길동
				1002 abcd 1234 박대길
				1003 hello 1234 김여신
				1004 test 1111 민서희
		*/
		
		MemberDAO.instance.selectTest06(); 
	

	%>
</body>
</html>