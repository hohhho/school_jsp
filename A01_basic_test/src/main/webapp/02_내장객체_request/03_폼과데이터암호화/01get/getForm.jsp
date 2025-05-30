<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
			[method="get"]
			
			form 속성중에서 method="get" 이 생략되어있다. 
			속성을 안적으면 자동으로 get으로 적용된다. 
			
			get으로 적용되면 url 에 데이터가 보인다.
	 -->
		
			
		<h2>나이를 입력하세요.</h2>
		<form action="getFormPro.jsp" method="get">
		
			나이 : 
			<input type="text" name="age"> 		
			<input type="submit" >
		</form>
		
</body>
</html>






