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
		int lastIndex = (int)session.getAttribute("lastIndex");
		
		
		
	%>
	
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>수정하기</h2>
		<form action="kioskAdminAddItemPro.jsp">
			<table border="1">
				<tr>
					<td>번호</td>
					<td>
						<%=numList[lastIndex -1]+ 1 %>
					</td>
				</tr>
				
				<tr>
					<td>상품이름</td>
					<td>
						<input type="text" name="name">
					</td>
				</tr>
				
				<tr>
					<td>가격</td>
					<td>
						<input type="number" name="price">
					</td>
				</tr>
				
				<tr>
					<td>수량</td>
					<td>
						<input type="number" name="count">
					</td>
				</tr>
				
				<tr>
					<td align="right" colspan="2">
						<input type="submit" value="등록">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>