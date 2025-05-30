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
	<h1>세션과배열수정3 </h1>
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
	<hr>
	 <a href="sessionArrayUpdate1.jsp">처음으로</a>
</body>
</html>