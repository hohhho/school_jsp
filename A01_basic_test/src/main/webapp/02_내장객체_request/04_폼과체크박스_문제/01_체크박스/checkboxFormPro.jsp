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
		String[] hobbies = request.getParameterValues("hobbies");
	%>
	
	<%if(hobbies != null){ %>
		<%for(int i = 0; i < hobbies.length; i++){ %>
			<%=hobbies[i] %>
		<%} %>
	<%} %>
	<br><br>
	<a href="checkboxForm.jsp">뒤로가기</a>
</body>
</html>