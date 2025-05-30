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
		int a = 10;
		int b = 20;
		int c = 30;
	%>
	
	<a href="aTagPro.jsp?a=<%=a%>&b=<%=b%>&c=<%=c%>">다음페이지</a>
</body>
</html>