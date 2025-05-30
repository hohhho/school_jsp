<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 특정 세션 한 개를 지정해서 삭제하기
	session.removeAttribute("log");

	// 아래와 같이 해도 같은결과가 나온다. 
	//session.setAttribute("log" , null);
	
	// 로그아웃시는 바로 이동한다. 
	response.sendRedirect("main.jsp");
%>