<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int currentPage = 1;  		 // 현재 페이지번호 
	int viewCount = 5;    		 // 한화면에 보여주는 게시글 갯수 
	int pagingButtonCount = 3;	 // 페이징버튼갯수
	
	session.setAttribute("currentPage", currentPage);
	session.setAttribute("viewCount", viewCount);
	session.setAttribute("pagingButtonCount", pagingButtonCount);

	response.sendRedirect("board/main.jsp");
%>