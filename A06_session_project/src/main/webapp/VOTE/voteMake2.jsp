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
		String strVoteTitle = (String)session.getAttribute("voteTitle");
		int voteCount = (int)session.getAttribute("voteCount");
	%>
   	<jsp:include page="voteHeader.jsp"/>
    <div align="center">
        <h3>투표리스트</h3>
        <form action="voteMake2Pro.jsp">
            <table border="1">   
                <tr>
                    <td>투표제목</td>
                    <td><%=strVoteTitle %></td>
                </tr>
                <%for(int i = 0; i < voteCount; i++){%>
                <tr>
                    <td>항목 <%=i + 1%></td>
                    <td ><input name="voteInfo<%=i %>"></td>             
                </tr>
                <%}%>
                <tr>
                    <td colspan="2"><input type="submit" value="투표리스트만들기"></td>             
                </tr>
            </table>
        </form>
    </div>
</body>
</html>