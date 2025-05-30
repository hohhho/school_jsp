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
		int[] num = {10001,10002,10003};
		String[] name = {"김철수","이영희","조영민"};
		int[] score = {100, 20, 40};
		
		String str = request.getParameter("index");
		int index = Integer.parseInt(str);
	%>
	
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>점수</td>
		</tr>
		<tr>
			<td><%=num[index] %></td>
			<td><%=name[index] %></td>
			<td><%=score[index] %></td>
		</tr>
	</table>
	<br>
	<button onclick="window.location.href='studentList.jsp'">뒤로가기</button>
</body>
</html>