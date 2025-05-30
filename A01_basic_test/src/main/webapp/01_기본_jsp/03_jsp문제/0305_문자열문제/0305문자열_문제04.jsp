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
            arr배열에서 검색하고 싶은 단어의 일부인 find를 검색하여,
            find의 부분이 일치하는 단어들을 출력하시오.
		*/
		
		/*
			[출력예시]
            school
			teacher
			child
		*/
	%>
	
	<%
	    String[] arr = {"school", "teacher", "child","father", "love"};
	    String find = "ch";
	%>
	
	<%for(int i = 0; i < arr.length; i++){%>
		<%if(arr[i].indexOf(find) != -1){ %>
			<%=arr[i] %><br>	
		<%} %>
	<%} %>		
	
	

</body>
</html>