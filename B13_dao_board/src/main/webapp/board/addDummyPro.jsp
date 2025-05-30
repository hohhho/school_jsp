
<%@page import="db02.BoardDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
		int count = 10;
		int size = BoardDAO2.instance.addDummyPro(count);
	
%>
	<jsp:include page="boardHeader.jsp"></jsp:include>
	
	
	<div align="center">
		<h1>더미 게시글 <%=size %>개 추가</h1>
	</div>