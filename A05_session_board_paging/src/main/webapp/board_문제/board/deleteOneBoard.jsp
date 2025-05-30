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
		
		int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
		
		int size = 1000;
		int[] deleteNum = new int[size];
		String[] deleteWriter = new String[size];
		String[] deleteTitle = new String[size];
		String[] deleteContents = new String[size];
		int[] deleteView = new int[size];
		
		int k = 0;
		for(int i=0; i<lastIndex; i++){
			if(i != targetIndex){
				deleteNum[k] = numList[i];
				deleteWriter[k] = writerList[i];
				deleteTitle[k] = titleList[i];
				deleteContents[k] = contentsList[i];
				deleteView[k] = viewCountList[i];
				k++;
			}
		}
		lastIndex--;
		
		session.setAttribute("numList", deleteNum);
		session.setAttribute("writerList", deleteWriter);
		session.setAttribute("titleList", deleteTitle);
		session.setAttribute("contentsList", deleteContents);
		session.setAttribute("viewCountList", deleteView);
		session.setAttribute("lastIndex", lastIndex);
	%>
	
	<%-- header --%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>게시글 삭제 완료</h2>
	</div>
	
	
</body>
</html>