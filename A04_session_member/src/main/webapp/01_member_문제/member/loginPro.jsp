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
  		
  		int state = 0; // 1은 로그인 성공, 2는 실패:빈 칸 있음, 3은 실패:아이디가 없음, 4는 실패:비밀번호가 틀림 
  		boolean checkBlank = id == null || id.isEmpty() || pw == null || pw.isEmpty();
  		
  		if(checkBlank){
  			state = 2;
  		}else{
  			for(int i = 0; i < lastIndex; i++){
  	  			if(idList[i].equals(id)){
  	  				if(pwList[i].equals(pw)){
  	  					state = 1;
  	  					break;
  	  				}else{
  	  					state = 4;
  	  				}
  	  			}else{
  	  				state = 3;
  	  			}
  	  		}
  		}
  		
  		if(state == 1){
  			session.setAttribute("log",id);
  		}else{
  			session.setAttribute("log", null);
  		}
    %>
	
	<%-- navigator --%>
	<jsp:include page="navigator.jsp"></jsp:include>
	
	<div align="center">
		<%if(state == 1){ %>
			<h3>로그인 성공!</h3>
			<%
				session.setAttribute("log", id);
			%>
		<%}else if(state == 2){ %>
			<h3>로그인 실패</h3>
			<h4>빈 칸이 있습니다</h4>
		<%}else if(state == 3){ %>
			<h3>로그인 실패</h3>
			<h4>가입되지 않은 아이디입니다</h4>
		<%}else if(state == 4){ %>
			<h3>로그인 실패</h3>
			<h4>옳지 않은 비밀번호입니다</h4>
		<%}else{
			System.out.println("Login ERROR - loginPro.jsp");	
		}
		%>
		
	</div>
</body>
</html>