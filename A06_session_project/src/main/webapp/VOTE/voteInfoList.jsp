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
		String voteTitle = (String)session.getAttribute("voteTitle");
		int voteCount = (int)session.getAttribute("voteCount");
		String [] voteInfoList = (String[])session.getAttribute("voteInfoList");
		int [] voteCountList = (int[])session.getAttribute("voteCountList");
	%>
	<jsp:include page="voteHeader.jsp"/>
 	<div align="center">
        <h3>투표진행상황</h3>
        	<%if(voteCount > 0) {%>
        		<h3> <%= voteTitle%></h3>
	            <table border="1">   
	            
	                <tr>
	                    <td width="150">항목 </td>
	                    <td width="50" align="center">개수 </td>
	                </tr>
	                <%for(int i = 0; i < voteCount; i++){%>
		                <tr>
		                    <td ><%=voteInfoList[i]%></td>             
		                    <td align="center"><%=voteCountList[i]%></td>             
		                </tr>
		                
	                <%}%>                    
	            </table>
            <%} %>
    </div>
</body>
</html>