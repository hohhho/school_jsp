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
			[문자열비교]
					a.compareTo(b)  는 equauls 와 다르게 크다 작다도 비교가 가능하다. 
					(1) a 가 b보다 크면 양수가 나온다.   a > b
					(2) a 와 b가 같으면 0이 나온다.     a == b
					(3) a 가 b보다 작으면 음수가 나온다.  a < b
			
		*/
		
		String a = "aaaa";
		String b = "bbbb";
		String c = "cccc";
		
	%>
		<% if(a.compareTo(b) < 0){%>
			a가 작다
		<% }else{%>
			a가 크거나같다.
		<%} %>
		
		<br>
		
		<% if(b.compareTo(a) > 0){%>
			b가 크다
		<% }else{%>
			b가 작거나같다.
		<%} %>
		
		<br>
		
		<% if(a.compareTo(c) == 0){%>
			같다.
		<% }else{%>
		 	다르다. 
		<%} %>
	
	
</body>
</html>