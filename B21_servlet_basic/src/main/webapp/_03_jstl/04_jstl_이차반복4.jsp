<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSTL 태그</title>
</head>
<body>
	
	<%--
		    #
		   ##
		  ###
		 ####
		#####
		 --%>
	<%
		for(int i=1; i<=5; i++){
			for(int j=4; j>=i; j--){
				System.out.print(" ");
			}
			for(int j=1; j<=i; j++){
				System.out.print("#");
			}
			System.out.println();
		}
	%>
	<c:forEach var="i" begin="1" end="5">
		<c:forEach var="j" begin="${ i }" end="4">
				+
			</c:forEach>
		<c:forEach var="j" begin="1" end="${ i }">
				#
			</c:forEach>
		<br>
	</c:forEach>
	<br>

	
</body>
</html>














