<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- request.setAttribute -->
<%
	request.setAttribute("age",10);

	int age = (Integer)request.getAttribute("age");
%>
	<%=age %>
	
	
<!-- el 태그 -->
<%
	request.setAttribute("age2", 30);
%>
	<br>
	${ age2 }
	

<!-- empty -->

<%
	ArrayList<Integer> list = new ArrayList<>();
%>
	${empty list }
	<br>
	${!empty list}

</body>
</html>