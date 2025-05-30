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

	Menu menu = MenuDAO.instance.adminUpdateForm(number);
	
	session.setAttribute("number", number);

%>
	<jsp:include page="kioskHeader.jsp"/>
	<div align="center">
        <h3>상품 수정 </h3>
        <form action="kioskAdminItemUpdatePro.jsp">
            <table border="1">
                <tr>
                    <td>상품이름</td>
                    <td><input name="itemName" value="<%=menu.getName() %>"></td>
                </tr>
                <tr>
                    <td>가격</td>
                    <td><input name="itemPrice" value="<%=menu.getPrice() %>"></td>
                </tr>
                <tr>
                    <td>개수</td>
                    <td><input name="itemCount" value="<%=menu.getCount() %>"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit"></td>             
                </tr>
            </table>
        </form>
    </div>
