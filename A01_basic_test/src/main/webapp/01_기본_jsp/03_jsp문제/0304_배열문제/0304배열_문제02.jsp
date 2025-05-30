<%@ page import="java.util.Random" %>
<%@ page import="java.util.Arrays" %>
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
		int[] arr = new int[10];
		Random rand = new Random();
		int max = 0;
	%>
	
	<%
		for(int i = 0; i < arr.length; i++){
			arr[i] = rand.nextInt(100)+1;
			if(arr[i] % 3 != 0){
				if(arr[i] > max){
					max = arr[i];
				}
			}
		}
	%>
	<%= Arrays.toString(arr) %><br>
	<%=max %>
	
</body>
</html>