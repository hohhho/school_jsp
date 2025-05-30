<%@page import="db01.BasicDAO2"%>
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
			Class 와 DAO를 사용해서 코드를 간결하게 유지할수있다.
			
			[1]  <%@page import="db01.Basic01DAO"%> 
			[2] 위 임포트후 자유롭게 사용가능하다. 
			
	 --%>

	<%	
		BasicDAO2.instance.selectTest01();
	
	%>
</body>
</html>