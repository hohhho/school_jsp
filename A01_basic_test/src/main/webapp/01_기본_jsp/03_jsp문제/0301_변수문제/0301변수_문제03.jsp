<%@page import ="java.util.Random" %>
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
		시험 점수는 0에서 100 사이이며, 항상 5점 단위로만 나옵니다. 
		예를 들어, 92점은 나올 수 없습니다. 
		철수와 민수와 영희는 시험을 보았다. 
		세학생의 각각의 점수와 총점과 평균을 출력하시오.   
		단, 평균은 소수점 두 자리까지 출력하시오.      
	*/
	
	/*
		[출력예시]
		철수 = 35
		민수 = 65
		영희 = 85
		총점 = 185
		평균 = 61.67
	*/
	%>
	
	<%
		Random rand = new Random();
		int a = rand.nextInt(21) * 5;
		int b = rand.nextInt(21) * 5;
		int c = rand.nextInt(21) * 5;
		int sum = a + b + c;
		double avg = (double)sum / 3;
	%>
	
	<%="철수 = "+a %><br>
	<%="민수 = "+b %><br>
	<%="영희 = "+c %><br>
	<%="총점 = "+sum %><br>
	<%="평균 = "+String.format("%.2f",avg) %>
</body>
</html>