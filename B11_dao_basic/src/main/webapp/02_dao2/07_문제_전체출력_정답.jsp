<%@page import="db02.MemberDAO"%>
<%@page import="db02.Member"%>
<%@page import="java.util.ArrayList"%>

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
		/*
			[문제]
				회원전체의 데이터를 브라우저화면에 출력하시오.					
		*/
		
		ArrayList<Member> memberList = MemberDAO.instance.selectTest07(); 
		
	%>
	<div align="center">
		<h3>회원목록</h3>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이름</td>
				<td>가입일</td>
			</tr>
		<% for(int i = 0; i < memberList.size(); i++) { %>
			<tr>
				<td><%= memberList.get(i).getNumber() %></td>
				<td><%= memberList.get(i).getId() %></td>
				<td><%= memberList.get(i).getPw() %></td>
				<td><%= memberList.get(i).getName() %></td>
			</tr>
		<%	} %>
		</table>
	</div>
		
</body>
</html>