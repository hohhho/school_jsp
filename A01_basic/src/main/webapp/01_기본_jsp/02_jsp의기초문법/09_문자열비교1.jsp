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
					
				지금까지 문자열비교에서는 == 을사용했지만, 
				웹에서는 문자열비교는 compareTo() 또는 equals() 를 사용해야한다. 
				== 이적용완되는때가 종종발생되서 아예 사용하지않는것이 좋다. 
				
				[1] a.compareTo(b) == 0 은 서로 같다를 뜻하고
				[2] a.compareTo(b) != 0 은 서로 다르다를 뜻한다. 
				
				같으면 0, a가 b보다 크면 양수, a가 b보다 작으면 음수를 반환
				
			
		*/
		
		String a = "aaaa";
		String b = "bbbb";
		
		String c = "cccc";
		String c1 = "cccc";
	%>
		<% if(a.compareTo(b) == 0){%>
			서로같다1.
		<% }else{%>
			서로다르다1.
		<%} %>
		<br>
		
		<% if(a.compareTo(b) != 0){%>
			서로다르다2.
		<% }else{%>
			서로같다2.
		<%} %>
		<br>
		
		<% if(c.compareTo(c1) == 0){%>
			서로같다3.
		<% }else{%>
			서로다르다3.
		<%} %>
		<br>
		<% if(c.compareTo(c1) != 0){%>
			서로다르다4.
		<% }else{%>
			서로같다4.
		<%} %>
</body>
</html>