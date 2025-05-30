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
		input태그의 type속성 값으로
		radio와 checkbox는 반드시 같은 name속성을 지정해야 한다.
	 --%>

	<div align="center">
	
	    <form action="checkboxFormPro.jsp">		        
        	<h1>취미</h1>      	
        	<input type="checkbox" name="hobbies" value="운동">운동
		   	<input type="checkbox" name="hobbies" value="독서">독서
		   	<input type="checkbox" name="hobbies" value="공부">공부  
		   	<input type="checkbox" name="hobbies" value="쇼핑">쇼핑   
		   	<br><br><br><br> 	
			<input type="submit" value="선택완료">
			
	    </form>
	  </div>
</body>
</html>