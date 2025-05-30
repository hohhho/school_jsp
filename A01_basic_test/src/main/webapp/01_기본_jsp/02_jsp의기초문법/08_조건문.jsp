<%@page import="java.util.Random" %>
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
	        랜덤숫자(1~10)을 b에 저장한다.
	        b 가 a 보다 크면 "크다" 를 출력 하시오.
	        b 가 a 보다 작으면 "작다" 를 출력 하시오.
	        b 가 a 와 같으면 "같다" 를 출력 하시오.
	    [예시]
	        7
	        크다
		*/
		
	int a = 5;
	Random rand = new Random();
	int b = rand.nextInt(10)+1;
	%>
	<%=a %><br>
	<%=b %>
	<hr/>
	
	<%if(b > a) {%>
		크다
	<%} %>
	<%if(b < a) {%>
		작다
	<%} %>
	<%if(b == a){ %>
		같다
	<%} %>
</body>
</html>