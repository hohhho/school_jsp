<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int count = (int)session.getAttribute("count");

	String[] idList = (String[])session.getAttribute("idList");	
	String[] pwList = (String[])session.getAttribute("pwList");	
	String[] nameList = (String[])session.getAttribute("nameList");	
	String[] genderList = (String[])session.getAttribute("genderList");	
%>

	<jsp:include page="memberHeader.jsp"></jsp:include>

	<div align="center">
		<h1>회원전체정보</h1>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이름</td>
				<td>성별</td>
			</tr>
		
		<%
			for(int i=0; i<count; i++) {
		%>
			<tr>
				<td><%= idList[i] %></td>
				<td><%= pwList[i] %></td>
				<td><%= nameList[i] %></td>
				<td><%= genderList[i] %></td>
			</tr>
		<%		
			}
		%>
		
		</table>
		
			
		
	</div>
</body>
</html>