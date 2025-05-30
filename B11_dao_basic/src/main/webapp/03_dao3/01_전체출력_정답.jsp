<%@page import="db03.StudentDAO"%>
<%@page import="db03.Student"%>
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
		/*
		[정답]
				1001 100 20 32
				1002 40 43 12
				1003 60 21 42
				1004 76 54 55
				1005 23 11 76
		*/
		
		
		ArrayList<Student> studentList = StudentDAO.instance.selectTest01(); 
	%>
	<div align="center">
		<h3>학생정보</h3>
		<table border="1">
			<tr>
				<td>번호</td>
				<td>국어</td>
				<td>수학</td>
				<td>영어</td>
			</tr>
		<% for(int i = 0; i < studentList.size(); i++) { %>
			<tr>
				<td><%= studentList.get(i).getNumber()%></td>
				<td><%= studentList.get(i).getKor() %></td>
				<td><%= studentList.get(i).getMath() %></td>
				<td><%= studentList.get(i).getEng() %></td>
			</tr>
		<%	} %>
		</table>
	</div>
		
</body>
</html>