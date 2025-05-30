<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="atmHeader.jsp"/>
	<div align="center">
        <h3>송금</h3>
        <form action="atmTransferPro.jsp">
            <table border="1">   
                <tr>
                    <td>보내는 계좌번호</td>
                    <td><input name="accountTransfer"></td>
                </tr>
                <tr>
                    <td>금액</td>
                    <td><input type="number" name="transfer"></td>
                </tr>
                
                <tr>
                    <td colspan="2"><input type="submit" value="송금"></td>             
                </tr>
            </table>
        </form>
    </div>
</body>
</html>