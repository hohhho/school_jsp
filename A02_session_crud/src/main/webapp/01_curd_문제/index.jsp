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
		int arr[] = new int[5];
		session.setAttribute("arr",arr);
		
		session.setAttribute("index", 0);
	%>
	
	<div align="center">
		<h1>CURD</h1>
		<a href="curd/list.jsp">전체목록 확인하기</a>
	</div>
</body>
</html>