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
		Random ran = new Random();
		
		int randNum = ran.nextInt(900) + 100;

		int place100 = randNum / 100;
		int place10 = randNum % 100 / 10;
		int place1 = randNum % 10;
		
		request.setAttribute("randNum", randNum);
		request.setAttribute("place100", place100);
		request.setAttribute("place10", place10);
		request.setAttribute("place1", place1);
	%>
	${ randNum } <br>
	${ place100 % 2 == 0 && place10 % 2 == 0 && place1 % 2 == 0 } <br>
	${ place100 mod 2 eq 0 and place10 mod 2 eq 0 and place1 mod 2 eq 0 } <br>
	
</body>
</html>











