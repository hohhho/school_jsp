
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
				아이디가 hello 인 데이터의 번호와 이름만 출력하시오.
				단, 변수를 사용하시오.
			[정답]
				1003 김여신
		*/
		
		MemberDAO.instance.selectTest04();  
		 
	%>
</body>
</html>