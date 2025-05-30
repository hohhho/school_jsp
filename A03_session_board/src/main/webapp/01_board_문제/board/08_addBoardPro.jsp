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
		int[] numberList = (int[])session.getAttribute("numberList");
		String[] titleList = (String[])session.getAttribute("titleList");
		String[] writerList = (String[])session.getAttribute("writerList");
		int[] lookCountList = (int[])session.getAttribute("lookCountList");
		String[] contentsList = (String[])session.getAttribute("contentsList");
		int index = (int)session.getAttribute("index");
	
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		numberList[index] = index+1;
		titleList[index] = title;
		writerList[index] = writer;
		lookCountList[index] = 0;
		contentsList[index] = contents;
		index++;
		
		session.setAttribute("numberList", numberList);
		session.setAttribute("titleList", titleList);
		session.setAttribute("writerList", writerList);
		session.setAttribute("lookCountList", lookCountList);
		session.setAttribute("contentsList", contentsList);
		session.setAttribute("index", index);
		
	%>
	
	<%-- top --%>
	<jsp:include page="00_navigator.jsp"></jsp:include>
	<div align="center">
		<h2>게시글을 작성했습니다</h2>
	</div>
</body>
</html>