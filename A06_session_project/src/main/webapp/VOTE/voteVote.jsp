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
        <h3>투표리스트</h3>
        <%if(voteCount > 0){ %>
      		  <h3> <%= voteTitle%></h3>
	        <form action="voteVotePro.jsp">
	            <table border="1">   
	                
	                <%for(int i = 0; i < voteCount; i++){%>
	                <tr>
	                    <td><input type="radio" name="index" value="<%=i %>"></td>
	                    <td ><%=voteInfoList[i]%></td>   
	                </tr>
	                <%}%>
	                <tr>
	                    <td colspan="4"><input type="submit" value="투표하기"></td>             
	                </tr>
	            </table>
	        </form>
        <%} %>
    </div>
    
</body>
</html>