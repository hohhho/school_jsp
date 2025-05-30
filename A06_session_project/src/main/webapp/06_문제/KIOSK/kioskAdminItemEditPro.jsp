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
		int[] numList = (int[])session.getAttribute("numList");
		String[] nameList = (String[])session.getAttribute("nameList");
		int[] priceList = (int[])session.getAttribute("priceList");
		int[] countList = (int[])session.getAttribute("countList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		int editTargetIndex = (int)session.getAttribute("editTargetIndex");
		
		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		int count = Integer.parseInt(request.getParameter("count"));
		
		nameList[editTargetIndex] = name;
		priceList[editTargetIndex] = price;
		countList[editTargetIndex] = count;
		
		session.setAttribute("nameList", nameList);
		session.setAttribute("priceList", priceList);
		session.setAttribute("countList", countList);
		
	%>
	
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
		<h2>수정 완료!</h2>
	</div>
</body>
</html>