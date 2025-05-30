<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
			스크립트릿(Scriptlet) 태그 : <%		%>
			
			(1) 자바의 영역을 설정할 때 사용
				스크립트릿 태그 안은 완전히 자바 영역으로, 자바 변수들을 사용할 수 있다.
			
	 --%>
	 
	 <%
	 	String name = "김철수";
	 	System.out.println(name);
	 	
	 	int a = 10+3;
	 	System.out.println(a);
	 %>
	 
	 <%=name %><br>
	 <%=a %>
	 <hr>
	 
	 <script type="text/javascript">
	 	let c = "이영지";
	 	let d = 20;
	 	
	 	document.write(c,"<br>");
	 	document.write(d,"<br>");
	 </script>
	 
</body>
</html>