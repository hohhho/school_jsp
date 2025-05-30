<%@page import="vote.InfoDAO"%>
<%@page import="vote.Info"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="vote.TitleDAO"%>
<%@page import="vote.Title"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
		
			
		Title title = TitleDAO.instance.getTitle();
		
		
		ArrayList<Info> infoList = InfoDAO.instance.getInfoList();
		
		
		
	%>
	

	<jsp:include page="voteHeader.jsp"/>
	<div align="center">
        <h3>투표리스트</h3>
        <%if(title.getSize() > 0){ %>
   		  	<h3> <%= title.getTitle()%></h3>
	        <form action="voteVotePro.jsp">
	            <table border="1">   
	                <tr>
	                	<td></td>
	                	<td>종류</td>
	                	<td>개수</td>
	                </tr>
	                <%for(int i = 0; i < infoList.size(); i++){%>
	                <tr>	
	                	<%if(i == 0){ %>
	                     	<td><input checked type="radio" name="number" value="<%=infoList.get(i).getNumber() %>"></td>
	                     <%} else{%>
	                   	 	<td><input  type="radio" name="number" value="<%=infoList.get(i).getNumber() %>"></td>
	                     <%} %>
	                     <td ><%=infoList.get(i).getInfo()%></td>   
	                     <td ><%=infoList.get(i).getCount()%></td> 
	                </tr>
	                <%}%>
	                <tr>
	                    <td colspan="4"><input type="submit" value="투표하기"></td>             
	                </tr>
	            </table>
	        </form>
        <%} %>
    </div>
