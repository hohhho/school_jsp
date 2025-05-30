<%@page import="board.BoardDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	BoardDAO.instance.deleteBoardPro(no);
%>

<jsp:include page="boardHeader.jsp"></jsp:include>
<div align="center">
		<h1>게시글을 삭제했습니다</h1>
</div>