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
		session에 저장한 변수값을 수정해보자.
	 --%>
	 
	 <%
	 	String name = "김철수";
	 	int score = 87;
	 	
	 	session.setAttribute("name", name);
	 	session.setAttribute("score", score);
	 %>
	 <h1>세션과변수수정후1</h1>
	 <%=name %>
	 <%=score %>
	 <br> <br> <br>
	 <a href="sessionVarUpdate2.jsp">다음 페이지</a>
</body>
</html>


