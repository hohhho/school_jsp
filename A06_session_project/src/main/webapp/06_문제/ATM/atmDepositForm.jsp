<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM TEST - atmDepositForm</title>
</head>
<body>
	<%-- header --%>
	<jsp:include page="atmHeader.jsp"></jsp:include>
	
	<div align="center">
		<h2>입금</h2>
		<form action="atmDepositPro.jsp">
			<table border="1">
				<tr>
					<td>입금금액</td>
					<td>
						<input type="number" name="money">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="입금">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>