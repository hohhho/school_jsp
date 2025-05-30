<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div align="center">
    	<jsp:include page="atmHeader.jsp"/>
        <h3>입금</h3>
        <form action="atmDepositPro.jsp">
            <table border="1">   
                <tr>
                    <td>입금금액</td>
                    <td><input type="number" name="deposit"></td>
                </tr>
                
                <tr>
                    <td colspan="2"><input type="submit" value="입금"></td>             
                </tr>
            </table>
        </form>
    </div>
</body>
</html>