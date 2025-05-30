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
		String str1 = request.getParameter("num1");
		String str2 = request.getParameter("num2");
		
		int num1 = Integer.parseInt(str1);
		int num2 = Integer.parseInt(str2);
	%>
	
	<h2>더 큰 숫자</h2>
	
	<%if(num1 > num2){%>
		<%=num1 %>
	<%} else if(num2 > num1){%>
		<%=num2 %>
	<%} else{%>
		같다
	<%} %>
	
	<br><br>
	
	<a href="bigNumberForm.jsp">뒤로가기</a>
</body>
</html>