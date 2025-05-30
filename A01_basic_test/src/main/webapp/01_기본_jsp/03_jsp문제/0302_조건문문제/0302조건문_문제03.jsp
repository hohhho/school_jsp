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
	    철수는 김밥을 만들기 위해 재료를 사러 마트에 왔습니다.
	    철수가 필요한 재료는 오이 14개와 당근 12개입니다.
	    오이는 한 번에 4개씩 묶어서 1500원에 판매되고,
	    당근은 한 번에 5개씩 묶어서 1600원에 판매됩니다.
	    철수가 재료를 구입하는 데 필요한 총 금액을 구하여 출력하시오.    
	*/
	
	/*
	    [출력예시]
   		오이 필요 묶음 수 : 4개
   		당근 필요 묶음 수 : 3개
   		총 금액 : 10800원 
	*/
	%>
	
	<%
		int a = 14;
		int b = 12;
		int aNum = a / 4;
		int bNum = b / 5;
		int total = 0;
	%>
	
	<%if(a % 4 != 0){ %>
		<%aNum += 1; %>
	<%} %>
	<%if(b % 5 != 0){ %>
		<%bNum += 1; %>
	<%} %>
	<%total = aNum * 1500 + bNum * 1600; %>
	
	오이 필요 묶음 수 : <%=aNum %>개<br>
	당근 필요 묶음 수 : <%=bNum %>개<br>
	총 금액 : <%=total %>원
	
</body>
</html>