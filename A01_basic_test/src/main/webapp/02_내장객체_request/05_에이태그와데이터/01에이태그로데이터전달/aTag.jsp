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
		a태그로 데이터를 보낼때는 직접 적어서 보낸다. 
	
	 --%>
	
	 <%
	 	int a = 10;
	 	int b = 20;
	 	int c = 30;
	 %>
	 
	 <%-- <%= %> 태그 사이에도 공백이 없어야 함 --%>
	 <a href="aTagPro.jsp?a=<%=a%>&b=<%=b%>&c=<%=c%>">다음페이지</a>
	 
</body>
</html>