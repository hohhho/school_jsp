
<%@page import="db03.Student"%>
<%@page import="db03.StudentDAO"%>
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
				국어점수가 영어점수보다 높은학생의 번호 , 국어 , 영어점수를 출력하시오.
			[정답]

				번호	국어	영어
				1001	100	32
				1002	40	12
				1003	60	42
				1004	76	55

		*/
		
		ArrayList<Student> studentList = StudentDAO.instance.selectTest04(); 
		
	%>
	<div align="center">
		<h3>학생정보</h3>
		<table border="1">
			<tr>
				<td>번호</td>
				<td>국어</td>
				<td>영어</td>
			</tr>
		<% for(int i = 0; i < studentList.size(); i++) { %>
			<tr>
				<td><%= studentList.get(i).getNumber() %></td>
				<td><%= studentList.get(i).getKor() %></td>
				<td><%= studentList.get(i).getEng()%></td>
			</tr>
		<%	} %>
		</table>
	</div>
		
</body>
</html>