<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	// 로그인 상태를 확인할 수 있는 log변수 세션에 저장
	session.setAttribute("log", null);
	// 각종 정보 저장 후, main페이지로 이동하기
	response.sendRedirect("member/main.jsp");
%>