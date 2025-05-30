
<%@page import="db02.BoardDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	boolean check = BoardDAO2.instance.deleteAllBoardPro();
%>


<jsp:include page="boardHeader.jsp"></jsp:include>
<div align="center">
	<%if(check){ %>
	<h1>게시글을 전부 삭제성공</h1>
	<%}else{ %>
	<h1>게시글을 전부 삭제실패</h1>
	<%} %>
</div>
