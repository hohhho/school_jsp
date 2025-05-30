<%@page import="java.util.Random" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		[랜덤 사용법]
			자바에서와 마찬가지로 랜덤은 import 해야 함
			가장 윗 줄에 import 되어 있음
			Directive 태그는 기본 설정 이외에 import 기능을 가지고 있음
			import 되면 자바에서 사용하듯이 사용할 수 있음
			
			Directive 태그 ( <%@ %> )는 초기 설정, import 두 가지 외에는 사용되지 않음
			
		[import 하는 방법]
			<%@ page import="java.util.Random"%>
	 --%>
	 
	 <%
	 	Random rand = new Random();
	 	int a = rand.nextInt(10);
	 %>
	 
	 <%=a %>
</body>
</html>