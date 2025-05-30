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
		int size = 1000;
		
		int[] numList = new int[size];
		String[] writerList = new String[size];
		String[] titleList = new String[size];
		String[] contentsList = new String[size];
		int[] viewCountList = new int[size];
		int lastIndex = 0;
		
		session.setAttribute("numList", numList);
		session.setAttribute("writerList", writerList);
		session.setAttribute("titleList", titleList);
		session.setAttribute("contentsList", contentsList);
		session.setAttribute("viewCountList", viewCountList);
		session.setAttribute("lastIndex", lastIndex);
		
		session.setAttribute("currentPage", 1);
	%>
	
	<%-- header --%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>전체 게시글 삭제 완료</h2>
	</div>
</body>
</html>