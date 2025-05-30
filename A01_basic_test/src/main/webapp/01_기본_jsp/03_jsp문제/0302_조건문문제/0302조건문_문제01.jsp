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
		1부터 5 사이의 랜덤 숫자를 저장합니다.
		1이면 "아메리카노", 2이면 "카페라떼", 3이면 "모카라떼",
		그 외 숫자는 "주문취소"를 출력하시오.    
	*/
	
	/*
		[출력예시]
		2
		까페라떼
		
		[출력예시]
		5
		주문취소    
	*/	
	%>
	
	<%
		Random rand = new Random();
		int r = rand.nextInt(5)+1;
	%>
	
	<%= r %><br>
	<%if(r == 1){ %>
		아메리카노
	<%} else if(r == 2){%>
		카페라떼
	<%} else if(r == 3){%>
		모카라떼
	<%} else{%>
		주문취소
	<%} %>
</body>
</html>