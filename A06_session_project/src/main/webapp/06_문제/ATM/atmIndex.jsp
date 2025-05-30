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
		int size = 1000;
		String[] idList = new String[size];
		String[] pwList = new String[size];
		String[] nameList = new String[size];
		String[] accountList = new String[size];
		int[] balanceList = new int[size];
		int lastIndex = 0;
		
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("lastIndex", lastIndex);
		session.setAttribute("accountList", accountList);
		session.setAttribute("balanceList", balanceList);
		session.setAttribute("log", null);
		
		response.sendRedirect("atmMain.jsp");
	%>
</body>
</html>