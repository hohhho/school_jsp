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
		
		String strNumber = request.getParameter("number");
		int number = Integer.parseInt(strNumber);
		int index = 0;
		
		for(int i = 0; i < numberList.length;i++){
			if(numberList[i] == number){
				index = i;
			}
		}
	%>
	
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>점수</td>
		</tr>
		<tr>
			<td><%=numberList[index] %></td>		
			<td><%=nameList[index] %></td>		
			<td><%=scoreList[index] %></td>	
		</tr>
		<tr>
			<td><a href="studentList.jsp">뒤로가기</a></td>
		</tr>
	</table>
	
</body>
</html>