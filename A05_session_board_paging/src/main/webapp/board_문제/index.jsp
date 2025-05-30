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
		int[] sampleNum = {1,2,3,4,5};
		String[] sampleWriter = {"철수1","철수2","철수3","철수4","철수5"};
		String[] sampleTitle = {"제목1","제목2","제목3","제목4","제목5"};
		String[] sampleContents = {"내용1","내용2","내용3","내용4","내용5"};
			
		int size = 1000;
	
		int[] numList = new int[size];
		String[] writerList = new String[size];
		String[] titleList = new String[size];
		String[] contentsList = new String[size];
		int[] viewCountList = new int[size];
		int lastIndex = 0;
		
		for(int i=0; i<sampleNum.length; i++){
			numList[i] = sampleNum[i];
			writerList[i] = sampleWriter[i];
			titleList[i] = sampleTitle[i];
			contentsList[i] = sampleContents[i];
			viewCountList[i] = 0;
			lastIndex++;
		}
		
		int currentPage = 1; 		// 현재 페이지 번호
		int vCount = 10; 			// 한 화면에 보여지는 게시글 수
		int pagingButtonCount = 5; 	// 페이징 버튼 개수
		
		
		session.setAttribute("numList", numList);
		session.setAttribute("writerList", writerList);
		session.setAttribute("titleList", titleList);
		session.setAttribute("contentsList", contentsList);
		session.setAttribute("viewCountList", viewCountList);
		session.setAttribute("lastIndex", lastIndex);
		
		session.setAttribute("currentPage", currentPage);
		session.setAttribute("vCount", vCount);
		session.setAttribute("pagingButtonCount", pagingButtonCount);
		
		
		response.sendRedirect("board/main.jsp");
	%>
</body>
</html>