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
		
		int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
		
		int size = 1000;
		int[] newNumberList = new int[size];
		String[] newTitleList = new String[size];
		String[] newWriterList = new String[size];
		int[] newLookCountList = new int[size];
		String[] newContentsList = new String[size];
	
		
		int count = 0;
		for(int i = 0; i < index; i++){
			if(i != targetIndex){
				newNumberList[count] = numberList[i];
				newTitleList[count] = titleList[i];
				newWriterList[count] = writerList[i];
				newLookCountList[count] = lookCountList[i];
				newContentsList[count] = contentsList[i];
				count++;
			}
		}
		index--;
		
		session.setAttribute("numberList", newNumberList);
		session.setAttribute("titleList", newTitleList);
		session.setAttribute("writerList", newWriterList);
		session.setAttribute("lookCountList", newLookCountList);
		session.setAttribute("contentsList", newContentsList);
		session.setAttribute("index", index);
	%>
	
	<%-- top --%>
	<jsp:include page="00_navigator.jsp"></jsp:include>
	<div align="center">
		<h2>게시글을 삭제했습니다</h2>
	</div>
</body>
</html>