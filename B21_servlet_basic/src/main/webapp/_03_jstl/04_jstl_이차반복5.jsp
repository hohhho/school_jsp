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
	   ###
	  #####
	 #######
	#########
	 --%>
	<%
		for(int i=0; i<5; i++){
			for(int j=i+1; j<=4; j++){
				System.out.print(" ");
			}
			for(int j=0; j<(i*2)+1; j++){
				System.out.print("#");
			}
			System.out.println();
		}
	
	%>
	<c:forEach var="i" begin="0" end="4">
		<c:forEach var="j" begin="${i + 1}" end="4">
			+
		</c:forEach>
		<c:forEach var="j" begin="1" end="${(i * 2) + 1}">
			#
		</c:forEach>
		<br>
	</c:forEach>
</body>
</html>














