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
			점수3개를 입력받아 평균을 출력한다.
	 --%>
  	<h2>평균구하기</h2>
 
	 <form action="scoreFormPro.jsp">
	   숫자1 : <input type="text" name="num1"> <br>
	   숫자2 : <input type="text" name="num2"> <br>
	   숫자3 : <input type="text" name="num3"> <br>
	   <input type="submit" value="입력완료">  
	 </form>
</body>
</html>