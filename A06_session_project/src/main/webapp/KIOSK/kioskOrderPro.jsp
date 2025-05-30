<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int size = (int)session.getAttribute("size");
	
	int[]    numberList = (int[])session.getAttribute("numberList");
	String[] nameList = (String[])session.getAttribute("nameList");
	int[]    priceList = (int[])session.getAttribute("priceList");
	int[]    countList =(int[])session.getAttribute("countList");
	
	
	int orderSize =  (int)session.getAttribute("orderSize");
	String[] orderNameList = (String[])session.getAttribute("orderNameList");
	int[] orderPriceList = (int[])session.getAttribute("orderPriceList");
	int[] orderCountList = (int[])session.getAttribute("orderCountList");
	int[] orderTotalList = (int[])session.getAttribute("orderTotalList");
	
	
	int index =  (int)session.getAttribute("index");
	int orderCount = Integer.parseInt(request.getParameter("orderCount"));
	
	
	int state = 0; // [1주문완료][2수량부족]
	
	if(countList[index] >= orderCount){
		countList[index] -= orderCount;
		int total = priceList[index] * orderCount;
		
		orderCountList[orderSize] = orderCount;
		orderTotalList[orderSize] += total;
		orderNameList[orderSize] = nameList[index];
		orderPriceList[orderSize] = priceList[index];
		orderSize += 1;
		
		session.setAttribute("orderNameList", orderNameList);
		
		session.setAttribute("orderPriceList", orderPriceList);
		
		session.setAttribute("orderCountList", orderCountList);
		session.setAttribute("orderTotalList", orderTotalList);
		session.setAttribute("orderSize", orderSize);
		
		session.setAttribute("countList", countList);
		
		state = 1;
	}else{
		state = 2;
		
	}
			
%>

<jsp:include page="kioskHeader.jsp"/>
<div align="center">
	<%if(state == 1) {%>
		 <h1> 주문 완료</h1>
	<%}else if(state == 2){%>
	 	<h1> 수량 부족</h1>
	<%} %>

</div>

