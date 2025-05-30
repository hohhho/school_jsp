
<%@page import="db03.StudentDAO"%>
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
				전체과목의 총합을 출력하시오.			
			[정답]
				665
		*/
		
		int total = StudentDAO.instance.selectTest03(); 
	
	%>
	<div align="center">
		<h3>학생정보</h3>
		<table border="1">
			<tr>
				<td>전체총합</td>
				
			</tr>
		
			<tr>
				<td><%= total %></td>
				
			</tr>
		
		</table>
	</div>
		
</body>
</html>