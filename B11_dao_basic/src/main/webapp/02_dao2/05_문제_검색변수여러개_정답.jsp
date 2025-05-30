
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
			아이디가 abcd 이고 비밀번호가 1234 인 데이터의 번호와 이름만 출력하시오.
			변수를 사용하시오.
		[정답]
			1002 박대길
			
		
		*/
	 
		MemberDAO.instance.selectTest05(); 
			
		
	%>
</body>
</html>