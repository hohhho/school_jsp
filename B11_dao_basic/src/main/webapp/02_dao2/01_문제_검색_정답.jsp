
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
			[정답]
				1003 김여신
				
			[설명]
				이번엔 * 로찾은것이 아니라 특정 데이터 number 와 name 만 찾았으므로 데이터가 2개이다. 	
					
				         1번column , 2번column 
			 	1번 row   []
			 	2번 row   [1003]      ['김여신']
		*/
		
		MemberDAO.instance.selectTest01();
		
	%>
</body>
</html>