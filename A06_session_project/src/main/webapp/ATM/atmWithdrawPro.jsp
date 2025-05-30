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
		int count = (int)session.getAttribute("count");
		String[] accountList = (String[])session.getAttribute("accountList");
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		int[] balanceList = (int[])session.getAttribute("balanceList");
	
		String log = (String)session.getAttribute("log");
		
		int withdraw = Integer.parseInt(request.getParameter("withdraw"));
		
		int index = 0;
		
		for(int i = 0; i < count; i++){
			if(log.equals(idList[i])){
				index = i;
				break;
			}
		}
		
		int state = 0; // [1입금성공] [2잔액부족] [3음수]
				
		int balance = balanceList[index] - withdraw;
				
		if(withdraw < 0){
			state = 3;
		}else if(balance >= 0){
			balanceList[index] -= withdraw;		
			state = 1; // 입금성공				
			session.setAttribute("balanceList", balanceList);
		}else{
			state = 2; // 잔액부족		
		}
		
		
		

	%>
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
	
	<% if(state == 1){ %>
				
        <h1>출금 성공</h1>
		
     <%}else if(state == 2) {%>
     
        <h1>잔액 부족</h1>
		
	<%}else if(state == 3){ %>
		 <h1>잘못된 숫자</h1>
	<%} %>
    </div>
</body>
</html>