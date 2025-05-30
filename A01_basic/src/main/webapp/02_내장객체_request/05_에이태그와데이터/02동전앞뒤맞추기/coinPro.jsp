<%@page import="java.util.Random"%>
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
	  	String str = request.getParameter("me");
		int me = Integer.parseInt(str);
	  	
		Random ran = new Random();
		int coin = ran.nextInt(2) + 1;
		
		int state = 0;
		
		if(me == coin){
			state = 1;
		}else{
			state = 2;
		}
	%>
	선택 : 
	<%=me %> <br>
	정답 : 
	<%=coin %> <br>
	
	<br>
	<%if(state== 1){ %>
    	정답입니다.
    <%} else if(state == 2) {%>
    	꽝입니다.
    <%}%>
    <br>
    <a href="coinForm.jsp" >뒤로가기</a>
</body>
</html>