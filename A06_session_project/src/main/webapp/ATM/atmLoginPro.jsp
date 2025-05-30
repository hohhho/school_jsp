<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int count = (int)session.getAttribute("count");
	String log = (String)session.getAttribute("log");
	
	String[] idList = (String[])session.getAttribute("idList");
	String[] pwList = (String[])session.getAttribute("pwList");

	String id = request.getParameter("accountId");
	String pw = request.getParameter("accountPassword");
	
	int check = 0;
	for(int i=0; i < count; i++) {
		if(idList[i].equals(id) && pwList[i].equals(pw)){
			check += 1;
			break;
		}
	}
	int state = 0; // 1 은 로그인성공, 2는 실패
	
	if(check > 0) {
		session.setAttribute("log", id);
		state = 1;
	}else{
		state = 2;
	}
%>



	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
		<%if(state == 1) {%>
			<h1>로그인 성공</h1>		
			
		<%}else if(state == 2){%>
			<h1>로그인 실패</h1>
		<%}%>
	</div>