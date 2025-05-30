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
		[method="post"]
				
		method="post" 로 넘어온 데이터는 암호화 되어 있다. 
		데이터가 영어라면 인코딩에 문제가없지만 
		한글이면 글자가깨진다. 
		아래 인코딩명령어를 반드시 적어야 한다. 
		request.setCharacterEncoding("UTF-8");
	*/
	
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
	%>
	<h2>name = <%= name %></h2>
	
	<a href="postForm.jsp" >뒤로가기</a>
</body>
</html>





