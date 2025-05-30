<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%
		int size = 1000;
	
		int[] numberList = new int[size];
		String[] titleList = new String[size];
		String[] writerList = new String[size];
		int[] lookCountList = new int[size];
		String[] contentsList = new String[size];
		int index = 0;
		
		numberList[index] = index + 1;
		titleList[index] = "제목1";
		writerList[index] = "작성자1";
		index++;
		
		numberList[index] = index + 1;
		titleList[index] = "제목2";
		writerList[index] = "작성자2";
		index++;
		
		numberList[index] = index + 1;
		titleList[index] = "제목3";
		writerList[index] = "작성자3";
		index++;
		
		session.setAttribute("numberList", numberList);
		session.setAttribute("titleList",titleList);
		session.setAttribute("writerList", writerList);
		session.setAttribute("lookCountList", lookCountList);
		session.setAttribute("contentsList", contentsList);
		session.setAttribute("index", index);
		
		response.sendRedirect("board/01_main.jsp");
	%>