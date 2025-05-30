<%@page import="java.util.Random"%>
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
	EL태그는 몫을 구할 수 없기 때문에 계산을 자바로 처리한 후, 출력만 EL태그로 한다.	
	 --%>

	<%--
	1. 연습문제
	    철수는 암호숫자를 만들었다. 
	    암호숫자의 규칙은 한자리의 숫자는 짝수이고, 다른한자리의 숫자는 홀수이면 통과이다.
	    반대의 순서도 상관없다. 
	    10부터 99사이의 랜덤숫자를 저장한후, 암호를 통과하는지 구하시오.
	2. 실행화면
	    [예시]
	        랜덤= 70
	        통과= True
	 --%>
	 
	 <%
	 	Random ran = new Random();
	 	int randNum = ran.nextInt(90) + 10;
	 	
	 	// EL태그는 몫을 구할 수 없기 때문에 계산을 자바로 처리한 후, 출력만 EL태그로 한다.
	 	
	 	int place10 = randNum / 10;
	 	int place1 = randNum % 10;
	 	
	 	request.setAttribute("randNum", randNum);
	 	request.setAttribute("place10", place10);
	 	request.setAttribute("place1", place1);
	 %>
	 
	 ${randNum}		<br>
	 ${place10 % 2 == 0 }		<br>
	 ${place1 % 2 == 1}		<br>
	 ${place10 % 2 == 1}		<br>
	 ${place1 % 2 == 0}		<br>
	 
	 <hr>
	 
	 ${ (place10 % 2 == 0 && place1 % 2 == 1) || (place10 % 2 == 1 && place1 % 2 == 0) } <br>
	 ${ (place10 mod 2 eq 0 and place1 mod 2 eq 1) or (place10 mod 2 eq 1 and place1 mod 2 eq 0) } <br>
	 
</body>
</html>






