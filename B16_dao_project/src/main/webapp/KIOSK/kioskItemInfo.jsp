<%@page import="kiosk.MenuDAO"%>
<%@page import="kiosk.Menu"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	int number = Integer.parseInt(request.getParameter("number"));
	
	Menu menu = MenuDAO.instance.kioskItemInfo(number);
	
	
	session.setAttribute("number", number);
	session.setAttribute("orderName", menu.getName());
	session.setAttribute("orderPrice", menu.getPrice());

%>


	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
        <h3>전체목록</h3>
        <form action="kioskOrderPro.jsp">
            <table border="1">
                <tr align="center">	
                    <td width="250px">이름</td>
                    <td ><%= menu.getName() %></td>			
                </tr>		
                <tr align="center">
                    <td width="250px">가격</td>
                    <td><%=  menu.getPrice() %></td>
                </tr>
                <tr align="center">
                    <td width="250px">주문수량</td>
                    <td><input type="number" value="1" name="orderCount"></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" value="담기"></td>
                </tr>
            </table>  
             
        </form>
    </div>
