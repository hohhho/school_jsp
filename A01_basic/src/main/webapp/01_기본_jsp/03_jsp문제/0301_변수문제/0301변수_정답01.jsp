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
			철수는 색종이를 20장, 영희는 색종이를 14장, 민수는 색종이를 6장 가지고 있습니다. 
			세 학생의 색종이를 전부 모아서 세 사람이 똑같이 나눠 가지면, 남는 색종이 수를 구하시오.
		*/
		
		/*
			[출력예시]
			총 종이 수량 = 40
			남은 종이 수량 = 1
		*/
	%>
	
	<%
		int a = 20;
		int b = 14;
		int c = 6;
		
		int d = a + b + c;
		
		int e = d % 3;
	%>
	
	총 종이 수량 = <%= d %>
	
	<br>
	
	남은 종이 수량 = <%= e %>
	
</body>
</html>