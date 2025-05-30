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
		    arr 배열의 값들 중 0을 전부 삭제하시오.
		*/ 
		
		/*
		    [출력예시]
    		1  2  3  5  7 
		*/
	%>
	
	<%
		int[] arr = {0, 0, 0, 1, 2, 3, 0, 5, 0, 7, 0, 0};
	%>
	
	<%
		int index = 0;
		for(int i = 0; i < arr.length; i++){
			if(arr[i] == 0){
				continue;
			}else{
				arr[index] = arr[i];
				index++;
			}
		}
	%>
	
	<%for(int i = 0; i < index; i++){ %>
		<%= arr[i] %>
	<%} %>
</body>
</html>