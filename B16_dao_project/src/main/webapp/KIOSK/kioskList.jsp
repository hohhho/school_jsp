<%@page import="kiosk.Order"%>
<%@page import="kiosk.OrderDAO"%>
<%@page import="kiosk.MenuDAO"%>
<%@page import="kiosk.Menu"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<%
	
	ArrayList<Menu> menuList = MenuDAO.instance.getMenuList();
	ArrayList<Order> orderList = OrderDAO.instance.getOrderList();
	
	int allTotalPrice = 0;
	
	for(int i = 0; i< orderList.size(); i++){
		allTotalPrice += orderList.get(i).getTotal();
	}
%>

<%
	
	

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
        
        <% for(int i = 0; i < menuList.size(); i++) {%>
            <tr align="center">
                <td><%= i + 1%></td>
                <td><a href="kioskItemInfo.jsp?number=<%=menuList.get(i).getNumber()%>"><%= menuList.get(i).getName() %></a></td>
                <td><%= menuList.get(i).getPrice() %></td>
                <td><%= menuList.get(i).getCount() %></td>
            </tr>
        <%}%>
        </table>
	
		<%if(orderList.size() == 0){ %>
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
	            <% for(int i = 0; i < orderList.size(); i++) {%>
	                <tr align="center">
	                    <td><%= i + 1%></td>
	                    <td><%= orderList.get(i).getName() %></td>
	                    <td><%= orderList.get(i).getCount()%></td>
	                    <td><%= orderList.get(i).getPrice() %>원</td>
	                </tr>
	            <%} %>
	            <tr>
	            	<td><h3>전체총합</h3></td>
	            	<td colspan="3" align="right"><%=allTotalPrice %>원</td>
	            </tr>
	        </table>
        <%} %>
    </div>
