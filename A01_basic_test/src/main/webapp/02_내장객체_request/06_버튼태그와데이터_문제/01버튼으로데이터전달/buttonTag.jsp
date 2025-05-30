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
	
	<button onclick="window.location.href='buttonTagPro.jsp?a=<%=a%>&b=<%=b%>&c=<%=c%>'">전송1</button>
	<button onclick="location.href='buttonTagPro.jsp?a=<%=a%>&b=<%=b%>&c=<%=c%>'">전송2</button>
</body>
</html>