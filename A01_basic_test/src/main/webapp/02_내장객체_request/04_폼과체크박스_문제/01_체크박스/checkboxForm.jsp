<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>체크박스 : 취미를 고르세요</h2>
	
	<form action="checkboxFormPro.jsp" method="get">
		<input type="checkbox" name="hobbies" value="운동">운동
		<input type="checkbox" name="hobbies" value="독서">독서
		<input type="checkbox" name="hobbies" value="서핑">서핑
		<input type="checkbox" name="hobbies" value="런닝">런닝
		<br><br>
		<input type="submit" value="입력완료">
	</form>
</body>
</html>