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
		/*
			[스트링포맷]
				스트링 포맷을 쓰면 + 를 통해서 연결하던 출력을 좀 더 보기 좋게 바꿀 수 있다.
		*/
		
		String str = String.format("%d",10);
	
		int a = 10;
		int b = 3;
		int c = a+ b;
		String str2 = String.format("%d + %d = %d",a ,b ,c);
		String str3 = ""+ a +" + "+ b +" = " + c;
	%>
	
	<%=str %><br>
	<%=str2 %><br>
	<%=str3 %>
	
	
</body>
</html>