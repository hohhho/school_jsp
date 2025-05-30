<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<%
	int count = (int)session.getAttribute("count");
	String[] idList = (String[])session.getAttribute("idList");
	String[] pwList = (String[])session.getAttribute("pwList");
	String[] nameList =  (String[])session.getAttribute("nameList");
	String[] genderList =  (String[])session.getAttribute("genderList");
	
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	String id = (String)session.getAttribute("log");
	
	// 특별한 의미없이 -1을 넣었다. 
	// 배열이 0부터 시작하기때문에 배열크기에 속하는 인덱스만아니면 사용가능하다.
	int index = -1;
	for(int i=0; i<count; i++) {
		if(idList[i].equals(id)) {
			index = i;
			break;
		}
	}
	
	nameList[index] = name;
	genderList[index] = gender;
	pwList[index] = pw;
	session.setAttribute("pwList", pwList);
	session.setAttribute("nameList", nameList);
	session.setAttribute("genderList", genderList);
	
	// 수정은 로그인한 아이디만 가능하기때문에 무조건 성공한다. 
%>
	
	<jsp:include page="memberHeader.jsp"></jsp:include>
	<div align="center">
		<h1>수정 성공</h1>
	</div>
	
