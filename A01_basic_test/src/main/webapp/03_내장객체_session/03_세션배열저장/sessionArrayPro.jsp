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
		Object obj = session.getAttribute("nameList");
		String[] nameList = (String[])obj;
		
		obj = session.getAttribute("scoreList");
		int[] scoreList = (int[])obj;
	%>
	<%
		for(int i=0; i<nameList.length; i++) {
	%>
			<%= nameList[i] %>
	<%	
		}
	%>
	<hr>
	
	<%
		for(int i=0; i<scoreList.length; i++) {
	%>
			<%= scoreList[i] %>
	<%
		}
	%>
	<br>
	<a href="sessionArray.jsp" >뒤로가기</a>
</body>
</html>