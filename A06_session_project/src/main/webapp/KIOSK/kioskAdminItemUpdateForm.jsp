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
	int lastNumber = (int)session.getAttribute("lastNumber");
	int[]    numberList = (int[])session.getAttribute("numberList");
	String[] nameList = (String[])session.getAttribute("nameList");
	int[]    priceList = (int[])session.getAttribute("priceList");
	int[]    countList =(int[])session.getAttribute("countList");
	
	
	int index = Integer.parseInt(request.getParameter("index"));

	session.setAttribute("index", index);
%>
	<jsp:include page="kioskHeader.jsp"/>
	<div align="center">
        <h3>상품 수정 </h3>
        <form action="kioskAdminItemUpdatePro.jsp">
            <table border="1">
                <tr>
                    <td>상품이름</td>
                    <td><input name="itemName" value="<%=nameList[index] %>"></td>
                </tr>
                <tr>
                    <td>가격</td>
                    <td><input name="itemPrice" value="<%=priceList[index] %>"></td>
                </tr>
                <tr>
                    <td>개수</td>
                    <td><input name="itemCount" value="<%=countList[index] %>"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit"></td>             
                </tr>
            </table>
        </form>
    </div>
</body>
</html>