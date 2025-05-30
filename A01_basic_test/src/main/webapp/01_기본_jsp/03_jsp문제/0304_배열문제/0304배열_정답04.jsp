<%@page import="java.util.Arrays"%>
<%@page import="java.util.Random"%>
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
		    1부터 10 사이의 랜덤 숫자 3개를 arr배열에 추가하되,
		    모든 숫자는 서로 달라야 하며, 세 숫자의 합이 20이 되도록 추가합니다.
		    추가된 배열 전체를 출력하시오.
		*/ 
		
		/* 
		    [출력예시]
		    [5, 9, 6]
		*/
	%>
	
	<%
		Random ran = new Random();
	
		int[] arr = new int[3];
		
		while(true) {
			int r1 = ran.nextInt(10) + 1;
			int r2 = ran.nextInt(10) + 1;
			int r3 = ran.nextInt(10) + 1;
			int total = r1 + r2 + r3;
			
			boolean check1 = total == 20;
			boolean check2 = r1 != r2 && r2 != r3 && r3 != r1;
			
			if(check1 && check2) {
				arr[0] = r1;
				arr[1] = r2;
				arr[2] = r3;
				break;
			}
		}
	%>
	
	<%= Arrays.toString(arr) %>
	
</body>
</html>