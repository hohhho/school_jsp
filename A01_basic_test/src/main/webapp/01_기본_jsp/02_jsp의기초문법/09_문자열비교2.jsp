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
			
			
			[1] a.equals(b) == true 은 서로 같다를 뜻하고
			[2] a.equals(b) == false 은 서로 다르다를 뜻한다. 
			
			
			[1] a.equals(b) 의  "== true" 부분은 생략 가능하다 false는 생략 못한다. 
			
			[1] !a.equals(b) 는 == false 와 같은뜻이다. 
		*/
	
		String a = "aaaa";
		String b = "bbbb";
	%>
	
	<%if(a.equals(b)){ %>
		서로 같다1.
	<%} else{%>
		서로 다르다1.
	<%} %>
	
	<%if(a.equals(b) == false){ %>
		서로 다르다2.
	<%} else{%>
		서로 같다2.
	<%} %>
	
	<%if(a.equals(b) == true){ %>
		서로 같다3.
	<%} else{%>
		서로 다르다3.
	<%} %>
	
	<%if(!a.equals(b)){ %>
		서로 다르다4.
	<%} else{%>
		서로 같다4.
	<%} %>
</body>
</html>