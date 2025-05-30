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
			[1] form 데이터 처리 페이지
			
			[2] 데이터가져오는방법 
				
				(1) String strAge = request.getParameter("age");	 
				모든내용은 문자열로 변환된다. 값이 정수라면 변환해서 사용한다.
				(2) int age = Integer.parseInt(strAge);
			
			[3] 500에러가 발생한다면 문법오류로써 틀린값을 입력한것이다. 
			
	-->
		
	<%
		
	  	String strAge = request.getParameter("age");	 // 문자열 변수 age 받아오기
		int age = Integer.parseInt(strAge);		//문자열 변수를 정수형으로 변환해서 다시 저장
		
			
	%>
	당신의 나이 : <%= age %> 세 입니다.
	
	<a href="ageForm.jsp" >뒤로가기</a>
</body>
</html>








