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
		String voteTitle = (String)session.getAttribute("voteTitle");
		int voteCount = (int)session.getAttribute("voteCount");
		String [] voteInfoList = (String[])session.getAttribute("voteInfoList");
		int [] voteCountList = (int[])session.getAttribute("voteCountList");
		String strIndex = request.getParameter("index");
		int index = Integer.parseInt(strIndex);
		
		voteCountList[index] += 1;
		response.sendRedirect("voteInfoList.jsp");		
	%>

	
    
</body>
</html>