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
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		String[] genderList = (String[])session.getAttribute("genderList");
		int lastIndex = (int)session.getAttribute("lastIndex");
	%>
	
	<%-- navigator --%>
	<jsp:include page="navigator.jsp"></jsp:include>
	
	<div align="center">
		<h2>회원전체정보</h2>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이름</td>
				<td>성별</td>
			</tr>
			<%for(int i = 0; i < lastIndex; i++){ %>
				<tr>
					<td><%=idList[i] %></td>
					<td><%=pwList[i] %></td>
					<td><%=nameList[i] %></td>
					<td><%=genderList[i] %></td>
				</tr>
			<%} %>
		</table>
	</div>
</body>
</html>