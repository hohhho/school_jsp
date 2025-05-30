<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		 	<form action="aaa"> 에 없는 페이지명을 사용하면 404 페이지 오류가 발생한다.
		 		404에러가 발생하면 action에 값을 잘살펴봐야한다. 
	 --%>

	<h2>나이를 입력하세요.</h2>
		<form action="aaa">
		
			나이 : 
			<input type="text" name="age"> 		
			<input type="submit" >
		</form>
		
</body>
</html>