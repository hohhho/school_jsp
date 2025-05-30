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
		int num1  = (int)session.getAttribute("num1"); 
		int num2  = (int)session.getAttribute("num2"); 
		
		String strNum = request.getParameter("myResult");	 
		int myResult = Integer.parseInt(strNum);
		
		int result = num1 * num2;
	%>
	
	<%=num1 %> * <%=num2 %> = <%=myResult %> <br>
	
	<%
		if(myResult == result) {
	%>
		정답
	<%  } else { %>
		꽝
	<%  } %>
	<br/>

 <a href="gugudanForm.jsp">돌아가기</a>
</body>
</html>