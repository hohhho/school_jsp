<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
		<h2>상품 추가</h2>
		<form action="kioskAdminAddItemPro.jsp" method="post">
			<table border="1">
				<tr>
					<td>상품번호</td>
					<td><input type="number" name="number" ></td>
				</tr>
				<tr>
					<td>상품이름</td>
					<td><input type="text" name="name" ></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="number" name="price" ></td>
				</tr>
				<tr>
					<td>수량</td>
					<td><input type="number" name="count" ></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="추가하기"></td>
				</tr>
			</table>
		
		</form>
	</div>
</body>
</html>