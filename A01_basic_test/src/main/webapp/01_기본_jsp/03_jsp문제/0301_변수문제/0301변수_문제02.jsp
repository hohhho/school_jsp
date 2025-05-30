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
		철수네 반 학생은 총 5명이며, 
		이번 시험에서 각각 10점, 87점, 53점, 65점, 49점을 받았습니다. 
		각 학생의 번호가 1번, 2번, 3번, 4번, 5번일 때, 
		홀수 번호 학생들의 평균을 구하여 소수점 두 자리까지 출력하시오.          
	*/
	
	/*
		[출력예시]
		37.33
	*/
	%>
	
	<%
		int[] arr = {10, 87, 53, 65, 49};
		double sum = 0;
		double avg = 0;
		int count = 0;
	%>
	
	<%for(int i = 0; i < arr.length; i++){ %>
		<%if(i % 2 == 0){ %>
			<%sum += arr[i]; %>
			<%count++; %>
		<%} %>
	<%} %>
	
	<%avg = sum/count; %>
	
	<%=String.format("%.2f",avg) %>
	
</body>
</html>