<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%
	// 3개의 샘플 데이터 저장
	String[] sampleNo = {"1", "2", "3"};
	String[] sampleWriter = {"작성자1", "작성자2", "작성자3"};
	String[] sampleSubject = {"제목1", "제목2", "제목3"};
	String[] sampleContents = {"내용1", "내용2", "내용3"};
	
	// 저장할 수 있는 게시글 수
	int size = 1000;
	String[] noList = new String[size];
	String[] writerList = new String[size];
	String[] subjectList = new String[size];
	String[] contentsList = new String[size];
	int [] readCountList = new int[size];
	
	int count = sampleNo.length;
	for(int i=0; i<count; i++) {
		noList[i] = sampleNo[i];
		writerList[i] = sampleWriter[i];
		subjectList[i] = sampleSubject[i];
		contentsList[i] = sampleContents[i];
		readCountList[i] = 0;
	}
	
	int lastNum = count;
	
	int currentPage = 1;  		 // 현재 페이지번호 
	int viewCount = 5;    		 // 한화면에 보여주는 게시글 갯수 
	int pagingButtonCount = 3;	 // 페이징버튼갯수

	
	
	session.setAttribute("count", count);
	session.setAttribute("noList", noList);
	session.setAttribute("writerList", writerList);
	session.setAttribute("subjectList", subjectList);
	session.setAttribute("contentsList", contentsList);
	session.setAttribute("readCountList", readCountList);
	session.setAttribute("lastNum", lastNum);
	
	session.setAttribute("currentPage", currentPage);
	session.setAttribute("viewCount", viewCount);
	session.setAttribute("pagingButtonCount", pagingButtonCount);

	response.sendRedirect("board/main.jsp");
%>
