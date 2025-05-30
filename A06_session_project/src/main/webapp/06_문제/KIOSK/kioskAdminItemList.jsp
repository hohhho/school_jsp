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
	%>
	
	<div align="center">
		<jsp:include page="kioskHeader.jsp"></jsp:include>
	
		<h2>전체목록</h2>
		
		<table border="1">
			<tr align="center">
				<td width="100">번호</td>
				<td width="150">이름</td>
				<td width="100">가격</td>
				<td width="100">재고수량</td>
				<td>증가</td>
				<td>감소</td>
				<td>수정</td>
				<td>삭제</td>
			</tr>
			
			<%for(int i=0; i<lastIndex; i++){ %>
			<tr align="center">
				<td> <%=numList[i] %> </td>
				<td> <%=nameList[i] %> </td>
				<td> <%=priceList[i] %> </td>
				<td> <%=countList[i] %> </td>
				<td> <button onclick="window.location.href='kioskAdminItemListPro.jsp?which=1&targetIndex=<%=i%>'">증가</button> </td>
				<td> <button onclick="window.location.href='kioskAdminItemListPro.jsp?which=2&targetIndex=<%=i%>'">감소</button> </td>
				<td> <button onclick="window.location.href='kioskAdminItemEditForm.jsp?targetIndex=<%=i%>'">수정</button> </td>
				<td> <button onclick="window.location.href='kioskAdminItemDelete.jsp?targetIndex=<%=i%>'">삭제</button> </td>
			</tr>
			<%} %>
		</table>
	</div>
</body>
</html>