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
		아래 조건을 5회 반복해서 실행합니다.
		
		[조건]
		(1) 0부터 100 사이의 랜덤 숫자를 출력합니다. (학생 점수)
		(2) 번호는 1번부터 시작하며, 번호와 점수를 함께 출력합니다.
		(3) 점수가 60점 이상이면 합격생입니다.
		(4) 합격생은 점수 옆에 [합격], 불합격생은 [불합격]을 출력합니다.
	*/
	
	/*
		[출력예시]
		1번 98점 [합격]
		2번 39점 [불합격]
		3번 64점 [합격]
		4번 85점 [합격]
		5번 96점 [합격]
	*/
	%>
	
	<% 
		Random ran = new Random();
	
		for(int i=0; i<5; i++) { 
			int score = ran.nextInt(101);
	%>
			<% if(score >= 60) { %>
				<%= (i + 1) + "번 " + score + "점 [합격]" %> <br>
			<% } %>
			<% if(score < 60) { %>
				<%= (i + 1) + "번 " + score + "점 [불합격]" %> <br>
			<% } %>
	<%  } %>
	
</body>
</html>