<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
   
	<%
		int count = (int)session.getAttribute("count");
		String[] accountList = (String[])session.getAttribute("accountList");
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		int[] balanceList = (int[])session.getAttribute("balanceList");
	
		String id = request.getParameter("accountId");
		String pw = request.getParameter("accountPassword");
		String name = request.getParameter("accountName");
		
		
		
		int check = 0;
		for(int i = 0; i < count; i++){
			if(id.equals(idList[i])){
				check += 1;
				break;
			}
		}
		
		int state = 0; // 1은 회원가입성공, 2는 중복아이디
		
		Random ran = new Random();
		if(check == 0){
			String randomAccount = "";
			int r = ran.nextInt(1000) + 100;
			randomAccount += r;	
			randomAccount += "-";
			r = ran.nextInt(1000) + 100;
			randomAccount += r;	
			
			accountList[count] = randomAccount;
			idList[count] = id;
			pwList[count] = pw;
			nameList[count] = name;
			balanceList[count] = 0;
			count += 1;
			
			session.setAttribute("accountList", accountList);
			session.setAttribute("idList", idList);
			session.setAttribute("pwList", pwList);
			session.setAttribute("nameList", nameList);
			session.setAttribute("balanceList", balanceList);
			session.setAttribute("count", count);
			
			state = 1;
			
		}else{
			state = 2;
		
		}
	%>

	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
		<%if(state == 1){ %>
			
			<h1>회원가입 성공</h1>
				
		<%}else if(state == 2){ %>
			<h1>아이디 중복</h1>
			
		<%} %>
	</div>
