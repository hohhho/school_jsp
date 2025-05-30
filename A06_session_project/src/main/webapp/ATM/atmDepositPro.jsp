<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		int count = (int)session.getAttribute("count");
		String[] accountList = (String[])session.getAttribute("accountList");
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		int[] balanceList = (int[])session.getAttribute("balanceList");
	
		String log = (String)session.getAttribute("log");
		
		int deposit = Integer.parseInt(request.getParameter("deposit"));
		
		int index = 0;
		
		for(int i = 0; i < count; i++){
			if(log.equals(idList[i])){
				index = i;
				break;
			}
		}
		
		int state = 0; // 1은성공, 2는 음수
		if(deposit < 0){
			state = 2;
		}else{
			balanceList[index] += deposit;
			state = 1;
			session.setAttribute("balanceList", balanceList);
		}
		
		
	%>
	
	<div align="center">
	<jsp:include page="atmHeader.jsp"/>
	
	<%if(state == 2) {%>
		<h1>잘못된 입금액</h1>
		
	<%}else if(state == 1){ %>
				
        <h1>입금 성공</h1>
     <%} %>


    </div>
