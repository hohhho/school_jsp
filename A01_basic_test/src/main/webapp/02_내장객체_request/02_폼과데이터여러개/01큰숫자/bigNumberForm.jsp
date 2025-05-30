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
		[1] 전달하는 데이터가 여러개 이상일경우 URL 데이터가 변경이 있다. 
			...생략/bigNumberFormPro.jsp?num1=1&num2=2
			
		[2] 데이터가한개일때
			페이지명?변수=값
			
		[3] 데이터가 여러개일때
		
			페이지명?변수=값&변수=값&변수=값&변수=값.... 
			
		[4] 첫번째 데이터만 ? 가 앞에 붙고 두번째 데이터부터는 & 가 앞에 붙는다.
			=> 변수끼리를 & 연산자로 연결
	 --%>
 <h2>더큰숫자찾기</h2>
 
 <form action="bigNumberFormPro.jsp">
   숫자1 : <input type="text" name="num1"> <br>
   숫자2 : <input type="text" name="num2"> <br>
   <input type="submit" value="입력완료">  
 </form>
</body>
</html>