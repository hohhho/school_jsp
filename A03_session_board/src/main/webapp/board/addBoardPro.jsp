<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	Object obj = session.getAttribute("count");
	int count = (int)obj;
	
	obj = session.getAttribute("lastNum");
	int lastNum = (int)obj;
	
	obj = session.getAttribute("noList");
	String[] noList = (String[])obj;
	
	obj = session.getAttribute("writerList");
	String[] writerList = (String[])obj;
	
	
	obj = session.getAttribute("subjectList");
	String[] subjectList = (String[])obj;
	
	obj = session.getAttribute("contentsList");
	String[] contentsList = (String[])obj;
	
	obj = session.getAttribute("readCountList");
	int[] readCountList = (int[])obj;
	
	String writer = request.getParameter("writer");
	String subject = request.getParameter("subject");
	String contents = request.getParameter("contents");
	

	
	noList[count] = String.valueOf(lastNum + 1);
	writerList[count] = writer;
	subjectList[count] = subject;
	contentsList[count] = contents;
	readCountList[count] = 0;
	count += 1;
	lastNum += 1;
	
	session.setAttribute("count", count);
	session.setAttribute("noList", noList);
	session.setAttribute("writerList", writerList);
	session.setAttribute("subjectList", subjectList);
	session.setAttribute("contentsList", contentsList);
	session.setAttribute("readCountList", readCountList);
	session.setAttribute("lastNum", lastNum);

	
%>
<jsp:include page="boardHeader.jsp"></jsp:include>
<div align="center">
	<h1>게시글을 작성했습니다</h1>
</div>










