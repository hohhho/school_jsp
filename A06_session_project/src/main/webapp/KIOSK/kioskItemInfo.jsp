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
	
	
	int[]    numberList = (int[])session.getAttribute("numberList");
	String[] nameList = (String[])session.getAttribute("nameList");
	int[]    priceList = (int[])session.getAttribute("priceList");
	int[]    countList =(int[])session.getAttribute("countList");

	int index = Integer.parseInt(request.getParameter("index"));
	session.setAttribute("index", index);
%>
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
        <h3>전체목록</h3>
        <form action="kioskOrderPro.jsp">
            <table border="1">
                <tr align="center">	
                    <td width="250px">이름</td>
                    <td><%= nameList[index] %></td>			
                </tr>		
                <tr align="center">
                    <td width="250px">가격</td>
                    <td><%=  priceList[index] %></td>
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
</body>
</html>