<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	

<%
	request.setCharacterEncoding("UTF-8");

	int count = (int)session.getAttribute("count");
	String[] idList = (String[])session.getAttribute("idList");
	String[] pwList = (String[])session.getAttribute("pwList");
	String[] nameList = (String[])session.getAttribute("nameList");
	String[] genderList = (String[])session.getAttribute("genderList");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	int check = 0;
	for(int i=0; i<count; i++) {
		if(idList[i].equals(id)) {
			check += 1;
			break;
		}
	}
	
	if(check == 0){
		idList[count] = id;
		pwList[count] = pw;
		nameList[count] = name;
		genderList[count] = gender;
		
		count += 1;
		
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
		session.setAttribute("count", count); 
	}
	%>

	<jsp:include page="memberHeader.jsp"></jsp:include>
	<%if(check == 0){ %>
	<div align="center">
		<h1>회원가입 성공</h1>
	</div>
	<%}else{ %>
	<div align="center">
		<h1>회원가입 실패</h1>
	</div>
	<%} %>


