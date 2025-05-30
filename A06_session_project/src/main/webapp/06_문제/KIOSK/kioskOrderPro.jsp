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
		int targetIndex = (int)session.getAttribute("targetIndex");
		
		int[] orderNumList = (int[])session.getAttribute("orderNumList");
		String[] orderNameList = (String[])session.getAttribute("orderNameList");
		int[] orderPriceList = (int[])session.getAttribute("orderPriceList");
		int[] orderCountList = (int[])session.getAttribute("orderCountList");
		int orderLastIndex = (int)session.getAttribute("orderLastIndex");
		
		int orderCount = Integer.parseInt(request.getParameter("orderCount"));
		
		int state = 0; // 1은 성공, 2는 실패(재고부족)
		if(orderCount > countList[targetIndex]){
			state = 2;
		}else{
			countList[targetIndex] -= orderCount;
			state = 1;
			
			orderNumList[orderLastIndex] = orderLastIndex+1;
			orderNameList[orderLastIndex] = nameList[targetIndex];
			orderPriceList[orderLastIndex] = priceList[targetIndex];
			orderCountList[orderLastIndex] = orderCount;
			orderLastIndex++;
			
			session.setAttribute("orderNumList", orderNumList);
			session.setAttribute("orderNameList", orderNameList);
			session.setAttribute("orderPriceList", orderPriceList);
			session.setAttribute("orderCountList", orderCountList);
			session.setAttribute("orderLastIndex", orderLastIndex);
		}
		
	%>
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
		<%if(state == 1){ %>
			<h2>주문 완료!</h2>
		<%} else{%>
			<h2>주문 실패!</h2>
			<h3>재고 부족</h3>
		<%} %>
	</div>
</body>
</html>