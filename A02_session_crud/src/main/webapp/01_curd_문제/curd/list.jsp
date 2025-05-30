<%@ page import="java.util.Random" %>
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
		int[] arr = (int[])session.getAttribute("arr");
		int index = (int)session.getAttribute("index");
	
		Random rand = new Random();
		int r = rand.nextInt(100);
	%>
	
	<div align="center">
		<h1>전체목록 확인하기</h1>
		<button onclick="window.location.href='addPro.jsp?randomValue=<%=r%>'">랜덤(0 ~ 99)값 추가</button>		
		<hr>
		<%for(int i = 0; i < index; i++){ %>
			<%=arr[i] %>
			<button onclick="window.location.href='editForm.jsp?targetIndex=<%=i%>&targetValue=<%=arr[i]%>'">수정</button>
			<button onclick="window.location.href='removePro.jsp?targetIndex=<%=i%>'">삭제</button>
			<br><br>
		<%} %>
	</div>
</body>
</html>