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
		String strNum = request.getParameter("num");
		int num = Integer.parseInt(strNum);
	%>
	
	<%if(num % 2 == 0){ %>
		짝수
	<%} else{%>
		홀수
	<%} %>
	
	<br><br>
	
	<a href="oddEvenForm.jsp">
		<button>뒤로가기</button>
	</a>
</body>
</html>