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
		    아래 단어들 중에서 사전 순서로 가장 빠른 글자를 출력하시오.
		*/
		
		/*
			[출력예시]
			child
		*/
	%>
	
	<%
		String[] arr = {"school", "teacher", "child","father", "love"};
	%>
	
	<%
		String min = arr[0];
		for(int i = 0; i < arr.length; i++){
			if(arr[i].compareTo(min) < 0){
				min = arr[i];
			}
		}
	%>
	
	<%= min%>

</body>
</html>