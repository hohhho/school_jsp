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
		
		//  0번을 변경하였다. 그리고 다시 세션에 저장하지않아도 저장이잘된다.
		nameList[0] = "aaa";
		scoreList[0] = 100;
		
		/*
			배열은 변수와 다르게 다시 저장하지않아도 저장이 잘된다. 
			하지만 매번저장하는 습관을 하는것이 좋다.
		*/
	%>
	 <h1>세션과배열수정2 </h1>
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
	 <a href="sessionArrayUpdate3.jsp">다음 페이지</a>
</body>
</html>