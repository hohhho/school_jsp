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
		
		int editTargetIndex = Integer.parseInt(request.getParameter("targetIndex"));
		session.setAttribute("editTargetIndex", editTargetIndex);
	%>
	
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>수정하기</h2>
		<form action="kioskAdminItemEditPro.jsp">
			<table border="1">
				<tr>
					<td>번호</td>
					<td>
						<%=numList[editTargetIndex] %>
					</td>
				</tr>
				
				<tr>
					<td>상품이름</td>
					<td>
						<input type="text" name="name" value="<%=nameList[editTargetIndex]%>">
					</td>
				</tr>
				
				<tr>
					<td>가격</td>
					<td>
						<input type="number" name="price" value="<%=priceList[editTargetIndex]%>">
					</td>
				</tr>
				
				<tr>
					<td>수량</td>
					<td>
						<input type="number" name="count" value="<%=countList[editTargetIndex]%>">
					</td>
				</tr>
				
				<tr>
					<td align="right" colspan="2">
						<input type="submit" value="수정완료">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>