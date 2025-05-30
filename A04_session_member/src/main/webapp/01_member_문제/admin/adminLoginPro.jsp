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
		String adminId = (String)session.getAttribute("adminId");
		String adminPw = (String)session.getAttribute("adminPw");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		int state = 0; // 1은 로그인 성공, 2는 아이디 오류, 3은 비밀번호 오류
		
		if(id.equals(adminId) && pw.equals(adminPw)){
			state = 1;
		}else if(!(id.equals(adminId))){
			state = 2;
		}else{
			state = 3;
		}
		
		if(state == 1){
			session.setAttribute("adminLog", id);
		}
	%>
	
	<%-- admin navigator --%>
	<jsp:include page="adminNavigator.jsp"></jsp:include>
	
	<div align="center">
		<%if(state == 1){ %>		
			<h2>관리자 로그인 성공!</h2>
		<%} else if(state == 2){%>
			<h2>관리자 로그인 실패!</h2>
			<h3>아이디 오류</h3>
		<%} else {%>
			<h2>관리자 로그인 실패!</h2>
			<h3>비밀번호 오류</h3>
		<%} %>
	</div>
	
</body>
</html>