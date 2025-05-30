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
		name = "이만수";	
		obj = session.getAttribute("score");
		int score = (int)obj;	
		score = 100;
		
		// 변수 값을 저장했으니 다시 저장한다. 
		session.setAttribute("name" , name);
		session.setAttribute("score" , score);
		
	 %>
	 <h1>세션과변수수정후2</h1>
	 <%=name %>
	 <%=score %>
	 <br> <br> <br>
	 <a href="sessionVarUpdate3.jsp">다음 다음 페이지</a>
</body>
</html>


