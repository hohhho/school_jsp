<%@page import="java.util.Arrays"%>
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
		    arr배열에 1부터 100 사이의 랜덤 숫자 10개를 저장한 후, 
		    3의 배수를 제외하고 가장 큰 수를 구하시오.
		*/
		
		/*
		    [출력예시]
    		[68, 92, 86, 8, 77, 63, 97, 5, 81, 74]
 			97
		*/
	%>
	
	<%
		Random ran = new Random();
	
		int[] arr = new int[10];
	
		for(int i=0; i<arr.length; i++) {
			int r = ran.nextInt(100) + 1;
			arr[i] = r;
		}
	%>
	
	<%= Arrays.toString(arr) %> <br>
	
	<%
		int max = 0;
		for(int i=0; i<arr.length; i++) {
			if(arr[i] % 3 != 0) {
				if(max < arr[i]) {
					max = arr[i];
				}
			}
		}
	%>
	
	<%= max %>
	
</body>
</html>