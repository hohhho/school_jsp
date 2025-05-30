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
		int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
		int targetValue = Integer.parseInt(request.getParameter("targetValue"));
		
		session.setAttribute("editTargetIndex", targetIndex);
	%>
	
	<div align="center">
		<h2>수정하기</h2>
		<h3><%=targetValue%>의 값을 수정합니다.</h3>
		<form action="editPro.jsp">
			수정할 값 입력 : 
			<input type="number" name="editValue" value="<%=targetValue%>">
			<input type="submit" value="수정하기">
		</form>
	</div>
</body>
</html>