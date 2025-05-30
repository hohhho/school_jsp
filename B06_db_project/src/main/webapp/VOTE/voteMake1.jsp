<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="voteHeader.jsp"/>
 	<div align="center">
        <h3>투표주제와 개수</h3>
        <form action="voteMake1Pro.jsp">
            <table border="1">   
            	<tr>
            		<td>투표 주제</td>
            		<td><input name="voteTitle" type="text"></td>
            	</tr>
                <tr>
                    <td>투표 항목개수</td>
                    <td><input name="voteSize" type="number"></td>
                </tr>
                        
                <tr>
                    <td colspan="2"><input type="submit" value="투표리스트만들기"></td>             
                </tr>
            </table>
        </form>
    </div>
</body>
</html>