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
		    arr 배열에서 각 자리수별로 숫자를 분리하여 그 곱을 구한 후, 
		    그 곱이 홀수인 숫자의 개수를 구하시오.
		*/ 
		
		/*
		    [출력예시]
    		33 13
    		2
		*/	
	%>
	
	<%
		int[] arr = {10, 33, 23, 13, 52};
		int count = 0;
	%>
	
	<%for(int i = 0; i < 5; i++){%>
		<%
			int a = arr[i] / 10;
			int b = arr[i] % 10;
			int k = a * b;
		%>
		<%if(k % 2 == 1){ %>
			<%=arr[i] %>
			<%count++; %>
		<%} %>
		
	<%} %>
	<br>
	<%=count %>
	
	
</body>
</html>