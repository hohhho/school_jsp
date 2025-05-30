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
        <h3>로그인</h3>
        <form action="atmLoginPro.jsp">
            <table border="1">   
                <tr>
                    <td>아이디</td>
                    <td><input name="accountId"></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input name="accountPassword"></td>
                </tr>
              
                <tr>
                    <td colspan="2"><input type="submit" value="로그인"></td>             
                </tr>
            </table>
        </form>
    </div>
</body>
</html>