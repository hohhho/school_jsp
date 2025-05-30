<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		/*
		    [문제]
	        철수는 비밀번호는 아래와 같습니다.
	        철수는 비밀번호를 보호하기 위해 비밀번호 글자 사이 사이에 
	        알파벳을 a부터 순서대로 끼워넣었습니다.
	        철수가 만든 비밀번호를 만들어보시오.
		*/
		
		/*
			[출력예시]
	        qawbecrd1e2f3g4h
		*/
	%>
	
	<%
		String password = "qwer1234";
		String sample = "abcdefghijklmnopqrstuvwxyz";
	%>
	
	<%	
		String newPassword = "";
		for(int i = 0; i < password.length(); i++){
			newPassword += password.charAt(i);
			newPassword += sample.charAt(i);
		}
	%>
	
	<%=newPassword %>
</body>
</html>