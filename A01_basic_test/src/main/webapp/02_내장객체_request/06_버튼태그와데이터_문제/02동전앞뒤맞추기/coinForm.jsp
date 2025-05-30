<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>a태그 동전 앞 뒤 맞추기(앞이나 뒤를 선택하세요)</h2>
		
		<%
			int front = 1;
			int back = 0;
			
		%>
		
	<button onclick="window.location.href='coinFormPro.jsp?frontOrBack=<%=front%>'">앞</button>
	<button onclick="window.location.href='coinFormPro.jsp?frontOrBack=<%=back%>'">뒤</button>
</body>
</html>