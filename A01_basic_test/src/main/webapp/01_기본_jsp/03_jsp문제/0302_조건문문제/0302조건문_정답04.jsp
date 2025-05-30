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
	
	<%
	/*
	    [문제]
	    10부터 99 사이의 랜덤 숫자 세 개를 생성하여 저장합니다.
	    가장 큰 수와 가장 작은 수를 각각 출력하시오.
	*/
	
	/*
	    [출력예시]
   		20 40 37
   		최대값 = 40
   		최소값 = 20	    		
	*/
	
	%>
	
	<%
		Random ran = new Random();
	
		int a = ran.nextInt(90) + 10;
		int b = ran.nextInt(90) + 10;
		int c = ran.nextInt(90) + 10;
		
		int max = a;
		if(max < b) {
			max = b;
		}
		if(max < c) {
			max = c;
		}
		
		int min = a;
		if(min > b) {
			min = b;
		}
		if(min > c) {
			min = c;
		}
	%>
	
	<%= a + " " +  b + " " + c %> <br>
	
	최대값 = <%= max %> <br>
	최소값 = <%= min %>
	
</body>
</html>