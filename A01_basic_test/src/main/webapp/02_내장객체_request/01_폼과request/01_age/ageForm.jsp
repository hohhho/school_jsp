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
			[1] form 태그 속성 (form + submit)
				(1) action="내용을처리할페이지명"
				(2) 보통 Pro를 뒤에 붙인다. (process의 약자)
				(3) request => JSP에서 제공하는 변수로 form에서 변수를 저장할 때 사용
						=> submit을 누르면, request.age="10"(문자)으로 저장됨
				
			[2] input 태그와 속성 
				(1-1) type="text" 
					내용을 입력할수있다. 내용을 입력하면 value에 저장된다. 
				(1-2) name="age"  
					자바의 변수를 생각하면 쉽다. 
					age 라는 변수에 input 에 입력된내용이 저장된다.   
				
			[3] input 버튼 
				(1) type="submit" 버튼이고 눌르면 form 의 action 페이지로 이동한다.
			
			[4] URL 로 아래와 같은 메세지가 전달된다. 
				(1) ...생략/ageFormPro.jsp?age=20
		  -->
			
		<h2>나이를 입력하세요.</h2>
		<form action="ageFormPro.jsp">
		
			나이 : 
			<input type="text" name="age"> 		
			<input type="submit" >
		</form>
		
</body>
</html>






