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
		Random rand = new Random();
		int r = rand.nextInt(9)+2;
		int[] arr = new int[r];
		int k = 0;
		
		for(int i = 0; i < r; i++){
			arr[i] = k;
			k++;
			if(k == 3){
				k = 0;
			}
		}
	%>
	<%=r %><br>
	<%=Arrays.toString(arr) %>
</body>
</html>