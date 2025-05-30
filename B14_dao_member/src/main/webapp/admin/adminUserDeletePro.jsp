
<%@page import="admin.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%

	String id = request.getParameter("id");
	

	AdminDAO.instance.deleteUser(id);
	
	

%>

<jsp:include page="adminHeader.jsp"></jsp:include>
	<div align="center">
		<h1>회원삭제 성공</h1>
	</div>


