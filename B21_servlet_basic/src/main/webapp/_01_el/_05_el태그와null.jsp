<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
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
			el태그로 null검사는 empty 로한다. 
			
			
		
	 --%>
	<%
  		ArrayList<Integer> list = new ArrayList<Integer>();
	
		// 아래 주석을 풀면 결과는 반대로 나온다. 
  		// list.add(10);
		request.setAttribute("list", list);
  	%>
  	${!empty list} 
  	<br>
  	${empty list }
</body>
</html>






