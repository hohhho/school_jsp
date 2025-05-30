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
		String strVoteTitle = request.getParameter("voteTitle");
		String strVoteCount = request.getParameter("voteCount");
		int voteCount = Integer.parseInt(strVoteCount);
		session.setAttribute("voteTitle", strVoteTitle);
		session.setAttribute("voteCount", voteCount);
		response.sendRedirect("voteMake2.jsp");
	%>
</body>
</html>