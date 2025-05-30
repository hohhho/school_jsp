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
			[문자열 비교]
			
			지금까지 문자열 비교에서는 ==을 사용했지만,
			웹에서의 문자열 비교는 compareTo() 또는 equals()를 사용해야 함
			==은 적용이 안 되는 경우가 발생해서 아예 사용하지 않는 것이 좋다
			
			[1] a.compareTo(b)
				1) 0 : a와 b가 같다
				2) 양수 : a > b
				3) 음수 : a < b
				4) 따라서 a.compareTo(b) == 0이면 서로 같다,
				   a.compareTo(b) != 0이면 서로 다르다를 뜻함
				   
			[2] a.equals(b)
				1) true : a == b
				2) false : a != b
			
		*/
		
		String a = "aaaa";
		String b = "bbbb";
		String c = "cccc";
		String c1 = "cccc";
	%>
	
	<%if(a.compareTo(b) == 0){ %>
		서로 같다1.
	<%} else{%>
		서로 다르다1.
	<%} %>
	
	<%if(a.compareTo(b) != 0) {%>
		서로 다르다2.
	<%} else{%>
		서로 같다2.
	<%} %>
	
	<%if(c.compareTo(c1) == 0){ %>
		서로 같다3.
	<%} else{%>
		서로 다르다3.
	<%} %>
	
	<%if(c.compareTo(c1) != 0){ %>
		서로 다르다4.
	<%} else{%>
		서로 같다4.
	<%} %>
	
	
	
</body>
</html>