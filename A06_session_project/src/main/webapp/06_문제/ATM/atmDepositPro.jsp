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
		
		balanceList[targetIndex] += money;
		session.setAttribute("balanceList", balanceList);
		
	%>
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>입금 완료!</h2>
	</div>
</body>
</html>