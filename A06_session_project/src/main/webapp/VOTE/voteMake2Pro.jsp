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
		String strVoteTitle = (String)session.getAttribute("voteTitle");
		int voteCount = (int)session.getAttribute("voteCount");
		
		String[] voteInfoList = new String[voteCount];
		int[] voteCountList = new int[voteCount];
		for(int i = 0; i < voteCount; i++){
			String str = "voteInfo" + i;
			voteInfoList[i] = request.getParameter(str);
		}
		session.setAttribute("voteInfoList", voteInfoList);
		session.setAttribute("voteCountList", voteCountList);
		response.sendRedirect("voteInfoList.jsp");
	%>
</body>
</html>