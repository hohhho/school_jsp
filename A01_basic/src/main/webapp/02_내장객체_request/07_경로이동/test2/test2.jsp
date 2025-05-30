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
		[경로] 
				./  는 현재 폴더 란뜻으로 생략가능하다.
				/   는 폴더안 을 의미하는 키워드이다.
				../ 는 폴더밖 을 키워드이다.
	 --%>

	<h2>여기는 test2</h2>
	<a href="../index.jsp">index로 이동</a>
	<br><br><br><br>
	<a href="../test1/test1.jsp">test1로 이동</a>
</body>
</html>