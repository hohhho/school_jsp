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
		// (1)계좌 (2) 아이디 (3) 비밀번호 (4)
		String[] accountSample ={"111-111" , "222-222"};
		String[] idSample = {"qwer" , "asdf"};
		String[] pwSample = {"1234" , "2345"};
		String[] nameSample = {"김철수" ,"이영희"};
		int[]    balanceSample = {1000, 2000};
		
		int size = 1000;
		String[] accountList = new String[size];
		String[] idList = new String[size];
		String[] pwList = new String[size];
		String[] nameList = new String[size];
		int[] balanceList = new int[size];
		
		int count = 0;
		for(int i = 0; i < accountSample.length; i++){
			accountList[i] = accountSample[i];
			idList[i] = idSample[i];
			pwList[i] = pwSample[i];
			nameList[i] = nameSample[i];
			balanceList[i] = balanceSample[i];
			count += 1;
		}
		
		session.setAttribute("accountList", accountList);
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("balanceList", balanceList);
		session.setAttribute("log", null);
		session.setAttribute("count", count);
		response.sendRedirect("atmMain.jsp");
	%>
</body>
</html>