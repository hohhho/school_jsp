
<%@page import="vote.InfoDAO"%>
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
		
		int number = Integer.parseInt(request.getParameter("number"));
		
		InfoDAO.instance.votePro(number);
		response.sendRedirect("voteInfoList.jsp");		
	%>

	
    
</body>
</html>