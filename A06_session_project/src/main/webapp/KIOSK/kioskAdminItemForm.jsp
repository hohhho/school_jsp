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
	
	String[] orderNameList = new String[size];
	int[] orderPriceList = new int[size];
	int[] orderCountList = new int[size];
	int[] orderTotalList = new int[size];
	int orderSize = 0;
	
	session.setAttribute("orderNameList", orderNameList);
	session.setAttribute("orderPriceList", orderPriceList);
	session.setAttribute("orderCountList", orderCountList);
	session.setAttribute("orderTotalList", orderTotalList);
	session.setAttribute("orderSize", orderSize);
%>

	<jsp:include page="kioskHeader.jsp"/>
	<div align="center">
        <h3>새상품추가</h3>
        <form action="kioskAdminItemPro.jsp">
            <table border="1">
                <tr>
                    <td>상품이름</td>
                    <td><input name="itemName"></td>
                </tr>
                <tr>
                    <td>가격</td>
                    <td><input name="itemPrice"></td>
                </tr>
                <tr>
                    <td>개수</td>
                    <td><input name="itemCount"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit"></td>             
                </tr>
            </table>
        </form>
    </div>
</body>
</html>