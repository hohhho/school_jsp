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
		int[] numberList = {10001, 10002, 10003};
		String[] nameList = {"김철수" , "이영희" , "조영민"};
		int [] scoreList = {100 , 20, 40};
	%>
	
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>점수</td>
		</tr>
		<%for(int i = 0; i < numberList.length; i++){ %>
		<tr>
			<td><a href="studentListInfo.jsp?index=<%=i%>"><%=numberList[i] %></a></td>		
			<td><%=nameList[i] %></td>		
			<td><%=scoreList[i] %></td>	
		</tr>
		<%} %>
		
	</table>
	
</body>
</html>