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
			1부터 9사이의 랜덤숫자 3개를 저장하고 출력한다.
	        첫번째 변수의 값이 가장 큰지 구하시오. 
		[예시]
	        rand1= 2
	        rand2= 6
	        rand3= 5
	        check= False	
	 --%>
	 
	 <%
	 	Random ran = new Random();
	 	
	 	int r1 = ran.nextInt(9)+ 1;
	 	int r2 = ran.nextInt(9)+ 1;
	 	int r3 = ran.nextInt(9)+ 1;
	 	
	 	request.setAttribute("r1", r1);
	 	request.setAttribute("r2", r2);
	 	request.setAttribute("r3", r3);
	 %>	 
	 
	 rand1 = ${r1 }<br>
	 rand2 = ${r2 }<br>
	 rand3 = ${r3 }<br>
	 
	 check = ${r1 > r2 && r1 > r3 }<br>
	 check = ${r1 gt r2 and r1 gt r3 }
	 
</body>
</html>