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
		String str = request.getParameter("frontOrBack");
		int frontOrBack = Integer.parseInt(str);
		
		Random rand = new Random();
		int r = rand.nextInt(2);
		String answer = "";
		String result = "";
		String my = "";
	%>
	
	<%
		if(r == 0){
			answer = "뒤";
		}else{
			answer = "앞";
		}
		
		if(frontOrBack == 0){
			my = "뒤";
		}else{
			my = "앞";
		}
	
		if(frontOrBack == r){
			result = "정답입니다";
		}else{
			result = "꽝입니다";
		}
	%>
	
	선택 : <%=my %><br>
	정답 : <%=answer %><br>
	<br>
	<%=result %>
	
</body>
</html>