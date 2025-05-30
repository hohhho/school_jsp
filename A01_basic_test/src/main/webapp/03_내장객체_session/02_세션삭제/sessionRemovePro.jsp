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
	  	// ssesion.removeAttribute("변수명");
	  	 
		session.removeAttribute("y");
	
		Object obj = session.getAttribute("x");	
		
		int x = (int)obj;
		System.out.println("x " + x);
		
		obj = session.getAttribute("y");

		// 지워졌기때문에 오류가 발생한다. 
		int y = (int)obj;
		System.out.println("y " + y);
	%>
	
		 <a href="sessionRemove.jsp">되돌아가기</a>
	
</body>
</html>