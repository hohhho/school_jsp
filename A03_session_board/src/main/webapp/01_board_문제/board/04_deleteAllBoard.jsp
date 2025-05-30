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
		int[] deleteNumberList = new int[size];
		String[] deleteTitleList = new String[size];
		String[] deleteWriterList = new String[size];
		int[] deleteLookCountList = new int[size];
		String[] deleteContentsList = new String[size];
		
		session.setAttribute("numberList", deleteNumberList);
		session.setAttribute("titleList", deleteTitleList);
		session.setAttribute("writerList", deleteWriterList);
		session.setAttribute("lookCountList", deleteLookCountList);
		session.setAttribute("contentsList", deleteContentsList);
		session.setAttribute("index", 0);
	%>
	
	<%-- top --%>
	<jsp:include page="00_navigator.jsp" />
	
	<div align="center">
		<h2>게시글을 전부 삭제했습니다</h2>
	</div>
</body>
</html>