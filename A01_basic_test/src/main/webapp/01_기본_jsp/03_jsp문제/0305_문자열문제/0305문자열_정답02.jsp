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
	
		String minWord = arr[0];
		for(int i=1; i<arr.length; i++) {
			if(minWord.compareTo(arr[i]) > 0) {
				minWord = arr[i];
			}
		}
	%>

	<%= minWord %>
</body>
</html>