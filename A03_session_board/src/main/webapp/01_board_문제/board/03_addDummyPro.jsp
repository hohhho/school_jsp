<%@ page import="java.util.Random" %>
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
		
		Random rand = new Random();
		
		for(int i = 0; i < 10; i++){
			numberList[index] = index + 1;
			titleList[index] = "제목"+(index+1);
			writerList[index] = "작성자"+(index+1);
			lookCountList[index] = 0;
			contentsList[index] = "내용"+(index+1);
			index++;
		}
		
		session.setAttribute("numberList", numberList);
		session.setAttribute("titleList", titleList);
		session.setAttribute("writerList", writerList);
		session.setAttribute("contentsList", contentsList);
		session.setAttribute("index", index);
	%>
	
	<%-- top --%>
	<jsp:include page="00_navigator.jsp" />
	
	<h2 align="center">더미 글 10개를 작성했습니다</h2>
	
</body>
</html>