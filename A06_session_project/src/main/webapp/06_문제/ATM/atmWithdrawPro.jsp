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
		int[] balanceList = (int[])session.getAttribute("balanceList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		String log = (String)session.getAttribute("log");
		
		int money = Integer.parseInt(request.getParameter("money"));
		
		int targetIndex = 0;
		for(int i=0; i<lastIndex; i++){
			if(idList[i].equals(log)){
				targetIndex = i;
				break;
			}
		}
		
		int check = balanceList[targetIndex] - money;
		int state = 0; // 1이면 출금 성공, 0이면 잔액부족
		
		if(check >= 0){
			state = 1;
			balanceList[targetIndex] -= money;
			session.setAttribute("balanceList", balanceList);
		}else{
			state = 2;
		}
		
	%>
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<%if(state == 1){ %>
			<h2>출금 완료!</h2>
		<%} else{%>
			<h2>출금 실패!</h2>
			<h3>잔액이 부족합니다</h3>
		<%} %>
	</div>
</body>
</html>