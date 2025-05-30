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
	 	Object obj = session.getAttribute("name");
		String name = (String)obj;
		
		obj = session.getAttribute("score");
		int score = (int)obj;
		
	 %>
	<h1>세션과변수수정전3</h1>
	 <%=name %>
	 <%=score %>
	 <br> <br> <br>
	 <a href="sessionVarUpdate1.jsp">처음으로</a>
</body>
</html>


