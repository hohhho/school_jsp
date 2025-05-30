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
	
	int allTotalPrice = 0;
	
	for(int i = 0; i < orderSize; i++){
		allTotalPrice += orderTotalList[i];
	}
%>

	<jsp:include page="kioskHeader.jsp"/>
 	<div align="center">
        <h3>전체목록</h3>

        <table border="1">
			<tr align="center">	
                <td>번호</td>
				<td width="250px">이름</td>
                <td width="250px">가격</td>
				<td width="150px">재고수량</td>
			</tr>	
        
        <% for(int i = 0; i < size; i++) {%>
            <tr align="center">
                <td><%= i + 1%></td>
                <td><a href="kioskItemInfo.jsp?index=<%=i%>"><%= nameList[i] %></a></td>
                <td><%= priceList[i] %></td>
                <td><%= countList[i] %></td>
            </tr>
        <%}%>
        </table>
	
		<%if(orderSize == 0){ %>
       		<h3>아직 주문이 없습니다</h3>
        <%}else{ %>
	
	        <h3>주문목록</h3>
	        <table border="1">	     
	        	<tr>
	        		<td>주문번호</td>
	        		<td>상품명</td>
	        		<td>주문개수</td>
	        		<td>가격</td>
	        		
	        	</tr>   	
	            <% for(int i = 0; i < orderSize; i++) {%>
	                <tr align="center">
	                    <td><%= i + 1%></td>
	                    <td><%= orderNameList[i] %></td>
	                    <td><%= orderCountList[i] %></td>
	                    <td><%= orderTotalList[i] %>원</td>
	                </tr>
	            <%} %>
	            <tr>
	            	<td><h3>전체총합</h3></td>
	            	<td colspan="3" align="right"><%=allTotalPrice %>원</td>
	            </tr>
	        </table>
        <%} %>
    </div>
</body>
</html>