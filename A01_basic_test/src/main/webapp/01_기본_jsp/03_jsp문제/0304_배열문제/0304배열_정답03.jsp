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
		    arr배열에 2부터 10 사이의 랜덤 숫자를 저장한 후, 
		    그 숫자만큼 반복을 하면서 "0 1 2"를 순차적으로 반복하여 
		    배열 전체를 출력하시오.
		*/
		
		/*
		    [출력예시]
		    8
		    [0, 1, 2, 0, 1, 2, 0, 1]		    
		*/
	%>
	
	<%
		Random ran = new Random();
	
		int size = ran.nextInt(9) + 1;
		size = 8;
		
		int[] arr = new int[size];
		
		int num = 0;
		for(int i=0; i<arr.length; i++) {
			arr[i] = num;
			
			if(i % 3 == 2) {
				num = 0;
			} else {
				num += 1;
			}
		}
	%>
	
	<%= size %> <br>
	<%= Arrays.toString(arr) %>
		
</body>
</html>