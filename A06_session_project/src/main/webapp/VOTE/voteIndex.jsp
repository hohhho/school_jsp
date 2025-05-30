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
		
		
		int voteCount = 0;		
		String voteTitle = "";		
		String[] voteInfoList = null;		
		int[] voteCountList = null;
		
		session.setAttribute("voteTitle", voteTitle);
		session.setAttribute("voteCount", voteCount);
		session.setAttribute("voteInfoList", voteInfoList);
		session.setAttribute("voteCountList", voteCountList);
		response.sendRedirect("voteMain.jsp");
		
		
	%>
</body>
</html>