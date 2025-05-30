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
	
	<%-- admin navigator --%>
	<jsp:include page="adminNavigator.jsp"></jsp:include>
	
	<div align="center">
		<h2>관리자 페이지(회원 정보 확인하기)</h2>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>비밀번호</td>
				<td>이름</td>
				<td>성별</td>
				<td>삭제</td>
			</tr>
			
			<%for(int i = 0; i < lastIndex; i++){ %>
				<tr>
					<td><%=idList[i] %></td>
					<td><%=pwList[i] %></td>
					<td><%=nameList[i] %></td>
					<td><%=genderList[i] %></td>
					<td>
						<button onclick="window.location.href='adminMemberDelete.jsp?deleteIndex=<%=i%>'">삭제</button>
					</td>
				</tr>
			<%} %>
		</table>
	</div>
</body>
</html>