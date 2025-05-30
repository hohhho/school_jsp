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
		String strAge = request.getParameter("age");
		int age = Integer.parseInt(strAge);
		int count = 0;
	%>
	
	당신의 나이는 <%=age %>세입니다
	
	<a href="ageForm.jsp">
		<button>뒤로가기</button>
	</a>
</body>
</html>