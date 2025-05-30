<%@page import="db02.BoardDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	
	int no = Integer.parseInt(request.getParameter("no"));
	
	boolean check = BoardDAO.instance.deleteBoardPro(no);

	
%>
<jsp:include page="boardHeader.jsp"></jsp:include>
<div align="center">
	<%if(check) {%>
	<h1>게시글을 삭제성공</h1>
	<%}else{ %>
	<h1>게시글을 삭제실패</h1>
	<%} %>
</div>