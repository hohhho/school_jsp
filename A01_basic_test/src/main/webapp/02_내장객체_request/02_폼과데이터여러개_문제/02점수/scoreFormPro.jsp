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
		String str3 = request.getParameter("num3");
		
		int num1 = Integer.parseInt(str1);
		int num2 = Integer.parseInt(str2);
		int num3 = Integer.parseInt(str3);
		
		double avg = 0;
	%>
	
	<%
		avg = (double)(num1+num2+num3) / 3;
	%>
	
	<h2>평균 구하기</h2>
	
	평균 : <%= String.format("%.2f",avg) %><br><br> 
	<a href="scoreForm.jsp">뒤로가기</a>
</body>
</html>