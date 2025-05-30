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
	<%
		/*
			[스트링포맷]
				실수 
				
				스트링 포맷을 통해 실수의 자릿수를 쉽게 제어할수있다. 
			
		*/
		double a = 10.3333333;
		String str = String.format("%.2f", a);
		String str2 = String.format("%.3f", a);
		String str3 = String.format("%.0f", a);
	%>
	<%=str %><br>
	<%=str2 %><br>
	<%=str3 %><br>
	
	
</body>
</html>