<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM TEST - atmTransferForm</title>
</head>
<body>
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>송금</h2>		
		
		<form action="atmTransferPro.jsp">
			<table border="1">
				<tr>
					<td>보내는 계좌번호</td>
					<td>
						<input type="text" name="account">
					</td>
				</tr>
				
				<tr>
					<td>금액</td>
					<td>
						<input type="number" name="money">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="송금">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>