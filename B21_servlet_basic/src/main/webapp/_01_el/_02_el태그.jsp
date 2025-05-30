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
 		# EL(Expression Language)
 		(1) EL태그는 request.setAttribute로 저장된 데이터를 사용할 때, 꺼내지 않고 바로 사용할 수 있다.
 		(2) 사용법1 :  ${ 키 }
 		(3) 사용법2 :  ${ requestScope.키 }
 		
 		둘다 사용가능하며, requestScore는 생략가능하다.
 	 --%>
 	 
	<h2> EL 태그 사용 후 </h2>	
	<%
		request.setAttribute("age2", 50);		 	 		 
	%>
	<%-- el 은 request 안의 값을 바로 사용할수있다. --%> 	 
	나이 = ${ age2 }		
	<br>	 	 
 	나이 = ${ requestScope.age2 }		
</body>
</html>