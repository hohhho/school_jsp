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
		Object obj = session.getAttribute("strList");
		String[] strList = (String[])obj;
		
		obj = session.getAttribute("numList");
		int[] numList = (int[])obj;
		
	%>
	
	<%for(int i = 0; i < strList.length; i++){ %>
		<%=strList[i] %>
	<%} %>
	<hr>
	
	<%for(int i = 0; i < numList.length; i++){ %>
		<%=numList[i] %>
	<%} %>
	<br>
	
	<a href="sessionArray.jsp">뒤로가기</a>
</body>
</html>