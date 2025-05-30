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



int[]    numberList = (int[])session.getAttribute("numberList");
String[] nameList = (String[])session.getAttribute("nameList");
int[]    priceList = (int[])session.getAttribute("priceList");
int[]    countList =(int[])session.getAttribute("countList");
%>
	<jsp:include page="kioskHeader.jsp"/>
 <div align="center">
        <h3>전체목록</h3>

        <table border="1">
			<tr align="center">	
                <td width="150px">번호</td>
				<td width="250px">이름</td>
                <td width="250px">가격</td>
				<td width="150px">재고수량</td>
                <td >증가</td>
                <td >감소</td>
                <td >수정</td>
                <td >삭제</td>
			</tr>	
        
        <% for(int i = 0; i < size; i++) {%>
            <tr align="center">
                <td><%= numberList[i]%></td>
                <td><%= nameList[i] %> </td>
                <td><%= priceList[i] %></td>
                <td><%= countList[i] %></td>
                <td><button onclick="window.location.href='kioskAdminItemPlus.jsp?index=<%=i%>'">증가</button></td>
                <td><button onclick="window.location.href='kioskAdminItemMinus.jsp?index=<%=i%>'">감소</button></td>
                <td><button onclick="window.location.href='kioskAdminItemUpdateForm.jsp?index=<%=i%>'">수정</button></td>
                <td><button onclick="window.location.href='kioskAdminItemDeletePro.jsp?index=<%=i%>'">삭제</button></td>
            </tr>
        <%}%>
        </table>

       
    </div>
</body>
</html>