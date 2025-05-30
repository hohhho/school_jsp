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
		
		int[] orderNumList = (int[])session.getAttribute("orderNumList");
		String[] orderNameList = (String[])session.getAttribute("orderNameList");
		int[] orderPriceList = (int[])session.getAttribute("orderPriceList");
		int[] orderCountList = (int[])session.getAttribute("orderCountList");
		int orderLastIndex = (int)session.getAttribute("orderLastIndex");
		
		// 품절인지 아닌지 판별
		boolean[] soldout = new boolean[1000];
		for(int i=0; i<lastIndex; i++){
			if(countList[i] == 0){
				soldout[i] = true;
			}
		}
		
		// 주문내역의 총 가격과 총 합계 가격 구하기
		int[] sumPrice = new int[1000];
		int totalPrice = 0;
		for(int i=0; i<orderLastIndex; i++){
			sumPrice[i] += orderCountList[i] * orderPriceList[i];
			totalPrice += sumPrice[i];
		}
		
	%>

	<%-- header --%>
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>주문하기</h2>
		
		<table border="1">
			<tr align="center">	
				<td width="100">번호</td>
				<td width="150">이름</td>
				<td width="200">가격</td>
				<td width="100">재고수량</td>
				<td>주문하기</td>
			</tr>
			
			<%for(int i=0; i<lastIndex; i++){ %>
			<tr align="center">
				<td><%=numList[i] %></td>
				<td><%=nameList[i] %></td>
				<td><%=priceList[i] %></td>
				<td>
					<%if(soldout[i]) {%>
						<span style="color: red">품절</span>
					<%} else{%>
						<%=countList[i] %>
					<%} %>
				</td>
				<td>
					<%if(soldout[i]) {%>
						<button onclick="window.location.href='kioskOrderForm.jsp?targetIndex=<%=i%>'" disabled>주문</button>
					<%}else{ %>
						<button onclick="window.location.href='kioskOrderForm.jsp?targetIndex=<%=i%>'">주문</button>
					<%} %>
				</td>
			</tr>
			<%} %>
		</table>

	<h2>주문내역</h2>
		<%if(orderNameList[0] == null){ %>
			<h3>주문 내역이 없습니다</h3>
		<%} else{%>
			<table border="1">
				<tr align="center">
					<td width="100">주문번호</td>
					<td width="150">제품명</td>
					<td width="100">가격</td>
					<td width="100">수량</td>
					<td width="100">총 가격</td>
				</tr>
				
				<%for(int i=0; i<orderLastIndex; i++){ %>
				<tr align="center">
					<td> <%=orderNumList[i] %> </td>
					<td> <%=orderNameList[i] %> </td>
					<td> <%=orderPriceList[i] %> </td>
					<td> <%=orderCountList[i] %> </td>
					<td> <%=orderPriceList[i] * orderCountList[i] %> </td>
				</tr>
				<%} %>
				
				<tr align="center">
					<td colspan="2"> <strong> 총 합계 가격:</strong> </td>
					<td colspan="3"> <%=totalPrice %></td>
				</tr>
			</table>
		<%} %>
	</div>
	
</body>
</html>