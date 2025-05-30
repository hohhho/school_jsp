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
		String str1 = request.getParameter("a");
		String str2 = request.getParameter("b");
		String str3 = request.getParameter("c");
		
		int a = Integer.parseInt(str1);
		int b = Integer.parseInt(str2);
		int c = Integer.parseInt(str3);
	%>
	
	<%=a %> <%=b %> <%=c %>	
</body>
</html>