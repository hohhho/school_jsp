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
		String strNum1 = request.getParameter("num1");	 
		String strNum2 = request.getParameter("num2");	 
		String strNum3 = request.getParameter("num3");	 
		
		double avg = 0;
		int num1 = 0;
		int num2 = 0;
		int num3 = 0;
		
		num1 = Integer.parseInt(strNum1);
		num2 = Integer.parseInt(strNum2);
		num3 = Integer.parseInt(strNum3);
		avg = (num1 + num2 + num3) / 3;			
	
	%>
	
	 	<h2>평균</h2>
	 	<%=avg %>
	 
	 
	 <a href="scoreForm.jsp" >뒤로가기</a>
</body>
</html>