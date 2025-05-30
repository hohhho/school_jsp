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
        <h3>출금</h3>
        <form action="atmWithdrawPro.jsp">
            <table border="1">   
                <tr>
                    <td>출금금액</td>
                    <td><input type="number" name="withdraw"></td>
                </tr>
                
                <tr>
                    <td colspan="2"><input type="submit" value="출금"></td>             
                </tr>
            </table>
        </form>
    </div>
</body>
</html>