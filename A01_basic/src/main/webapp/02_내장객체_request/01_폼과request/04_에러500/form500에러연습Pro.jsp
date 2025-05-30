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
		
	  	String strAge = request.getParameter("age");	 
		int age = Integer.parseInt(strAge);		// 값이 없는데 숫자로 변환하면서 에러가 발생한다. 
		
			
	%>
	당신의 나이 : <%= age %> 세 입니다.
	
	<a href="form500에러연습.jsp" >뒤로가기</a>
</body>
</html>