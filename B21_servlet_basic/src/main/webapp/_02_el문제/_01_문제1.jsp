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
		
		int randNum1 = ran.nextInt(9) + 1;
		int randNum2 = ran.nextInt(9) + 1;
		int randNum3 = ran.nextInt(9) + 1;
		
		request.setAttribute("randNum1", randNum1);
		request.setAttribute("randNum2", randNum2);
		request.setAttribute("randNum3", randNum3);
	%>
	${ randNum1 } <br>
	${ randNum2 } <br>
	${ randNum3 } <br>
	${ randNum1 > randNum2 && randNum1 > randNum3 } <br>
	${ randNum1 gt randNum2 and randNum1 gt randNum3 } <br>
	
</body>
</html>











