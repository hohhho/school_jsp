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
		
		int transfer = Integer.parseInt(request.getParameter("transfer"));
		String accountTransfer =  request.getParameter("accountTransfer");
		
		// 상대 계좌 찾기 (-1을 사용하는 이유는 못찾을경우 -1그래도 나오기때문이다)
		// 배열은 0부터 시작하기때문에 배열의 범위만 벗어나있으면 -1이든 -2든 상관없다. 
		int transferIndex = -1;		
		for(int i = 0; i < count; i++){
			if(accountTransfer.equals(accountList[i])){
				transferIndex = i;
				break;
			}
		}
		
		// 내 계좌 찾기 
		int index = 0;		
		for(int i = 0; i < count; i++){
			if(log.equals(idList[i])){
				index = i;
				break;
			}
		}

		
		int state = 0; // [1송금성공] [2상대계좌틀림] [3음수] [4잔액부족]
		int balance = balanceList[index] - transfer;
		
		if(transferIndex == -1){
			state = 2;	// 계좌번호 틀림 
		}else if(transfer < 0){
			state = 3; // 음수
		}else if(balance >= 0){
			balanceList[index] -= transfer;		
			balanceList[transferIndex] += transfer;
			
			state = 1; // 송금성공				
			session.setAttribute("balanceList", balanceList);
		}else{
			state = 4; // 잔액부족
		}
			
		

	%>
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
	
	<% if(state == 1){ %>
        <h1>송금 성공</h1>
     <%}else if(state == 2) {%>     
        <h1>계좌번호 틀림</h1>
		
	<%}else if(state == 3){ %>
		 <h1>잘못된 숫자</h1>
	<%}else if(state == 4){ %>
		<h1>잔액 부족</h1>
	<%} %>
    </div>
</body>
</html>