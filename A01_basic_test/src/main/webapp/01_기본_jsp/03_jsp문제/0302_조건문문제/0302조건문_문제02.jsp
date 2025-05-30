<%@ page import="java.util.Random" %>
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
		철수는 마트에서 오렌지 한 개에 1000원, 사과 한 개에 800원에 팔고 있는 것을 보았습니다.
		단, 마트에서는 오렌지와 사과를 합쳐서 10개 이상 구입하면, 
		각각 상품의 가격을 100원씩 할인해주는 행사를 하고 있습니다.
		철수는 랜덤으로 1부터 10개의 오렌지와 1부터 10개의 사과를 구입하였습니다.
		철수가 구입한 오렌지와 사과의 개수, 그리고 총 구입 가격을 출력하시오.    
	*/
	
	/*
		[출력예시]
		오렌지 수량 : 7
		사과 수량 : 6
		총 수량 : 13
		오렌지 가격 : 900원
		사과 가격 : 700원
		총 구입 가격 : 10500원 
	*/
	%>
	
	<%
		Random rand = new Random();
		int orange = 1000;
		int apple = 800;
		int orangeNum = rand.nextInt(10)+1;
		int appleNum = rand.nextInt(10)+1;
		int total = 0;
	%>
	
	<% if(orangeNum + appleNum >= 10){%>
		<% orange -= 100; %>
		<% apple -= 100; %>
	<%} %>
	
	<%total = orange * orangeNum + apple * appleNum; %>
	
	오렌지 수량 : <%=orangeNum %><br>
	사과 수량 : <%=appleNum %><br>
	총 수량 : <%=orangeNum + appleNum %><br>
	오렌지 가격 : <%=orange %><br>
	사과 가격 : <%=apple %><br>
	총 구입 가격 : <%=total %>
		
</body>
</html>