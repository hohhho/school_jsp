<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 	<%--
 		- request.setAttribute() 는 session.setAttribute() 와 사용법이 동일하다.
 		
 	 --%>

 	 <%
		request.setAttribute("age", 30);	
 	 	int age = (Integer)request.getAttribute("age");
 	 %>	

	<%= age %>
 	 
</body>
</html>