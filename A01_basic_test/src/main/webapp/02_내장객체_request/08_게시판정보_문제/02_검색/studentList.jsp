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
	%>
	
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>점수</td>
		</tr>
		<%for(int i = 0; i < num.length; i++){ %>
			<tr>
				<td><%=num[i] %></td>
				<td><%=name[i] %></td>
				<td><%=score[i] %></td>
			</tr>
		<%} %>
	</table>
	<br><br>
	
	<form action="studentListInfo.jsp" method="get">
		검색: <input type="text" name="num" >
		<input type="submit" value="검색">
	</form>
	
</body>
</html>