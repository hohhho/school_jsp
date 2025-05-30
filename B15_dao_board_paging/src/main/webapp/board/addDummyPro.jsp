<%@page import="board.BoardDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	int count = 10;
	BoardDAO.instance.addDummyPro(count);	
%>
	<jsp:include page="boardHeader.jsp"></jsp:include>
	

	<div align="center">
			<h1>더미 게시글 10개 추가</h1>
	</div>