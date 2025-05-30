<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	int count = 0;
	int size = 1000;
	String[] noList = new String[size];
	String[] writerList = new String[size];
	String[] regDateList = new String[size];
	String[] subjectList = new String[size];
	String[] contentsList = new String[size];
	int [] readCountList = new int[size];
	
	int lastNum = count;
	
	
	
	
	session.setAttribute("count", count);
	session.setAttribute("noList", noList);
	session.setAttribute("writerList", writerList);
	session.setAttribute("subjectList", subjectList);
	session.setAttribute("contentsList", contentsList);
	session.setAttribute("readCountList", readCountList);
	session.setAttribute("lastNum", lastNum);
	
	
	int currentPage = 1;  		 // 현재 페이지번호 
	int viewCount = 5;    		 // 한화면에 보여주는 게시글 갯수 
	int pagingButtonCount = 3;	 // 페이징버튼갯수
	int startButton = 1;
	int endButton = startButton + pagingButtonCount;
	
	session.setAttribute("currentPage", currentPage);
	session.setAttribute("viewCount", viewCount);
	session.setAttribute("pagingButtonCount", pagingButtonCount);
	session.setAttribute("startButton", startButton);
	session.setAttribute("endButton", endButton);
	
%>
<jsp:include page="boardHeader.jsp"></jsp:include>
<div align="center">
	<h1>게시글을 전부 삭제했습니다</h1>
</div>