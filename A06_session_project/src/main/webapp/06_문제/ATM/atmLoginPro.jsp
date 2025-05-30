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
		int lastIndex = (int)session.getAttribute("lastIndex");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	
		int state = 0; // 1은 로그인 성공, 2는 아이디 없음, 3은 비밀번호 틀림
		for(int i=0; i<lastIndex; i++){
			if(id.equals(idList[i])){
				if(pw.equals(pwList[i])){
					state = 1;
					break;
				}else{
					state = 3;
				}
			}else{
				state = 2;
			}
		}
		
		if(state == 1){
			session.setAttribute("log", id);
		}
	%>
	<%-- header --%>
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<%if(state == 1){ %>
			<h3>로그인 성공!</h3>
		<%} else if(state == 2){%>
			<h3>로그인 실패!</h3>
			<h4>아이디 없음</h4>
		<%} else if(state == 3){%>
			<h3>로그인 실패!</h3>
			<h4>비밀번호 틀림</h4>
		<%} %>
	</div>
</body>
</html>