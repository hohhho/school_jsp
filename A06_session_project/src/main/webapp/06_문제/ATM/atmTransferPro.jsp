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
		String[] accountList = (String[])session.getAttribute("accountList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		String log = (String)session.getAttribute("log");
	
		String account = request.getParameter("account");
		String strMoney = request.getParameter("money");
		int money = Integer.parseInt(strMoney);
		
		int myIndex = -1;
		for(int i=0; i<lastIndex; i++){
			if(log.equals(idList[i])){
				myIndex = i;
				break;
			}
		}
		
		int state = 0; // 1은 성공, 2는 계좌번호 틀림, 3은 잔액 부족, 4는 빈 칸 있음
		int sendIndex = -1;
		for(int i=0; i<lastIndex; i++){
			if(account.equals(accountList[i])){
				sendIndex = i;
				break;
			}
		}
		
		boolean notEnoughMoney = balanceList[myIndex] - money < 0;
		boolean noAccount = sendIndex == -1;
		
		if(notEnoughMoney){
			state = 3;
		}else if(noAccount){
			state = 2;
		}else{
			state = 1;
		}
		
		if(state == 1){
			balanceList[myIndex] -= money;
			balanceList[sendIndex] += money;
			
			session.setAttribute("balanceList", balanceList);
		}
	%>
	
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<%if(state == 1){%>
			<h2>송금 성공!</h2>
		<%} else if(state == 2){%>
			<h2>송금 실패!</h2>
			<h3>계좌번호가 올바르지 않습니다</h3>
		<%} else{%>
			<h2>송금 실패!</h2>
			<h3>잔액 부족</h3>
		<%} %>
	</div>
</body>
</html>