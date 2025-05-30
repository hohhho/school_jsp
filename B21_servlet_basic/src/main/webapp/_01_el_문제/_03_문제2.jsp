<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		[문제]
			철수는 암호 숫자의 규칙을 만들었습니다. 
			암호 숫자는 세 자리의 숫자이면서 모든 자리의 숫자가 짝수이어야 합니다.
			랜덤으로 100 ~ 999 사이의 숫자를 저장하고, 
			그 숫자가 철수의 암호 규칙을 통과하는지 확인하시오.
		[예시]
			630		false
			426		true
	 --%>
	 
	 <%
	 	Random rand = new Random();
	 	
	 	int pw = rand.nextInt(900)+100;
	 	request.setAttribute("password",pw);
	 	
	 	int place100 = pw / 100;
	 	int place10 = pw % 100 / 10;
	 	int place1 = pw % 10;
	 	request.setAttribute("a", place100);
	 	request.setAttribute("b", place10);
	 	request.setAttribute("c", place1);
	 %>
	 
	 password  = ${password }<br>
	 check = ${a%2==0 and b%2==0 and c mod 2 eq 0 }
	 
</body>
</html>