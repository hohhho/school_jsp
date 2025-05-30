<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
	
		String voteCheck = (String)session.getAttribute("voteCheck");
			
	%>

	<div align="center">


        <h1>VOTE TEST</h1>

        <table border="1">        
            <tr>           
            	<%if(voteCheck == null) {%>
                	<td><a href="voteMake1.jsp">투표만들기</a></td> 
               	<%}else{ %>
	                <td><a href="voteVote.jsp">투표하기</a></td> 
	                <td><a href="voteInfoList.jsp">투표현황</a></td> 
	                <td><a href="voteDeletePro.jsp">초기화</a></td> 
                <%} %>
                <td><a href="../index.jsp">처음으로</a></td> 
            </tr>
        </table>
        
        
    </div>
</body>
</html>