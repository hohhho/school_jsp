<%@ page import="java.util.Random" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM TEST</title>
</head>
<body>
	<%
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		String[] accountList = (String[])session.getAttribute("accountList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		Random rand = new Random();
		int r1 = rand.nextInt(900)+100;
		int r2 = rand.nextInt(900)+100;
		String ranAccount = r1+"-"+r2;
		
		int state = 1; // 1은 로그인 성공, 2는 로그인 실패(아이디 중복)
		for(int i=0; i<lastIndex; i++){
			if(id.equals(idList[i])){
				state = 2;
				break;
			}
		}
		
		if(state == 1){
			
		}
		
	%>
	
	<%-- header --%>
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<%if(state == 1) {%>
			<h2>회원가입 성공!</h2>
			<%
				idList[lastIndex] = id;
				pwList[lastIndex] = pw;
				nameList[lastIndex] = name;
				accountList[lastIndex] = ranAccount;
				
				lastIndex++;
				
				session.setAttribute("idList", idList);
				session.setAttribute("pwList", pwList);
				session.setAttribute("nameList", nameList);
				session.setAttribute("accountList", accountList);
				session.setAttribute("lastIndex", lastIndex);
			%>
		<%} else if(state == 2){%>
			<h2>회원가입 실패!</h2>
			<h3>아이디 중복</h3>
		<%} %>
	</div>
	
	
</body>
</html>