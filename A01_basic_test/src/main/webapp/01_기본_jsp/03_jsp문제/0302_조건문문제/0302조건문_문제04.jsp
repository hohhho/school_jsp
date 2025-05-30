<%@ page import="java.util.Random" %>
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
	    [문제]
	    10부터 99 사이의 랜덤 숫자 세 개를 생성하여 저장합니다.
	    가장 큰 수와 가장 작은 수를 각각 출력하시오.
	*/
	
	/*
	    [출력예시]
   		20 40 37
   		최대값 = 40
   		최소값 = 20	    		
	*/
	
	%>
	
	<%
		Random rand = new Random();
		int[] arr = new int[3];
		int max = 0;
		int min = 100;
	%>
	<%for(int i = 0; i < 3; i++){ %>
		<%arr[i] = rand.nextInt(90)+10; %>
		<%=arr[i] %>
		<%if(arr[i] > max){ %>
			<%max = arr[i]; %>
		<%} %>
		<%if(arr[i] < min){ %>
			<%min = arr[i]; %>
		<%} %>
	<%} %>
	
	<br>
	최대값 = <%=max %><br>
	최소값 = <%=min %>
	


</body>
</html>