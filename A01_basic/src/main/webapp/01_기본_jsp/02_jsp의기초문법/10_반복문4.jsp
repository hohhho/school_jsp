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
	        아래조건을 전부 만족시키는 식을 작성해, 정답과 똑같이 출력하시오.
	        [1] 반복문을 사용하여 숫자를 1 부터 10까지 출력한다. 
	        [2] 숫자가 홀수가아닐때에는 숫자 대신 "x"를 출력한다.		
	        [3] else 를 사용하지마시오.
			
	    [정답]
			1
			x
			3
			x
			5
			x
			7
			x
			9
			x
	*/
		
	%>
	<%for(int i = 1; i < 10; i++){ %>
		<%if(i % 2== 0) {%>
			<%="x" %>
			<br>
		<%} %>
		<%if( i% 2 == 1){ %>
			<%=i %>
			<br>
		<%} %>
	<%} %>
	
	
</body>
</html>