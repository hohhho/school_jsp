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

		/*
			[1] 
				checkbox 는 값이 여러개이다. 즉, request.getParameter를 사용할 수 없다.
				request.getParameter를 사용하면 첫번째 값만 넘어온다. 
				아래와같이 getParameterValues를 사용해야한다. 
			[2]
				아무것도 체크안했을경우는 null 이 넘어온다. 예외처리 해준다. 
		*/
		
		String[] hobbies = request.getParameterValues("hobbies");
	%>
	<% if(hobbies != null){%>	
		<% for(int i = 0; i < hobbies.length; i++){ %>
			<%= hobbies[i]%> &nbsp;
		<%} %> 
	<%}%>
	
		<br>
	 <a href="checkboxForm.jsp">돌아가기</a>
</body>
</html>