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
		
		String str = request.getParameter("num");
		int k = Integer.parseInt(str);
		int count = 0;
		int index = 0;
	%>
	
	<%
		for(int i = 0; i < num.length; i++){
			if(k == num[i]){
				count++;
				index = i;
			}
		}
	%>
	
	<%if(count <= 0){ %>
		해당 번호의 학생이 없습니다.<br>
		<a href="studentList.jsp">뒤로가기</a>
	<%} else{%>
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
		<a href="studentList.jsp">뒤로가기</a>
	<%} %>
</body>
</html>