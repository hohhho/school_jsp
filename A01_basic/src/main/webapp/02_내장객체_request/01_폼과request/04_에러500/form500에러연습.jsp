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
				아래 폼에 아무값도 안넣거나 혹은 문자를 입력하고 버튼을 눌러본다. 
				다음페이지에서 500 에러가 발생하는데 이는 문법오류로서 주의해야한다. 
				이부분의 해결은 추후에 하며, 지금은 값을 정확하게 입력하는 연습을 하자.
		 --%>
		<h2>500에러연습 (나이대신 문자나 공백으로 버튼을 누르세요)</h2>
		<h2>나이를 입력하세요.</h2>
		<form action="form500에러연습Pro.jsp">
		
			나이 : 
			<input type="text" name="age"> 		
			<input type="submit" >
		</form>
		
</body>
</html>