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
		session은 배열도 저장할 수 있다.
	 --%>
	 
	 <%
	 	String[] nameList = {"qwer", "abcd", "hello"};
	 	int[] scoreList = {87, 21, 75};
	 	
	 	session.setAttribute("nameList", nameList);
	 	session.setAttribute("scoreList", scoreList);
	 %>
	 <h1>세션과배열수정1 </h1>
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
	 <a href="sessionArrayUpdate2.jsp">다음 페이지</a>
</body>
</html>


