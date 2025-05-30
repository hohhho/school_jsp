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
		int[] numList = (int[])session.getAttribute("numList");
		String[] writerList = (String[])session.getAttribute("writerList");
		String[] titleList = (String[])session.getAttribute("titleList");
		String[] contentsList = (String[])session.getAttribute("contentsList");
		int[] viewCountList = (int[])session.getAttribute("viewCountList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		
		for(int i=0; i<10; i++){
			numList[lastIndex] = lastIndex+1;
			writerList[lastIndex] = "작성자"+(lastIndex+1);
			titleList[lastIndex] = "제목"+(lastIndex+1);
			contentsList[lastIndex] = "내용"+(lastIndex+1);
			viewCountList[lastIndex] = 0;
			lastIndex++;
		}
		
		session.setAttribute("numList", numList);
		session.setAttribute("writerList", writerList);
		session.setAttribute("titleList", titleList);
		session.setAttribute("contentsList", contentsList);
		session.setAttribute("viewCountList", viewCountList);
		session.setAttribute("lastIndex", lastIndex);
	%>
	
	<%-- header --%>	
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>더미 10개 추가</h2>
	</div>
</body>
</html>