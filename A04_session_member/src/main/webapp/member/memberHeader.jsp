<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String log = (String)session.getAttribute("log"); %>

	<div align="center">
		<h1>회원관리페이지</h1>
		
		<table border="1">
			<tr>
				<td align="right">
					<%-- 원래는 관리자만 확인가능하나 테스트용으로 만들었다가 다완성후에는 삭제한다. --%>
					<a href="memberList.jsp">회원전체정보</a>
				
			
				<%	if(log == null) {	%>
					<a href="joinForm.jsp">회원가입</a>
					<a href="loginForm.jsp">로그인</a>
					<a href="../admin/adminMain.jsp">ADMIN</a>
				<%	} else {	%>
					<a href="logout.jsp">로그아웃</a>
					<a href="updateForm.jsp">회원정보수정</a>
					<a href="deleteForm.jsp">회원탈퇴</a>
					[<%=log%> 님 로그인중 ]
				<%	}	%>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>