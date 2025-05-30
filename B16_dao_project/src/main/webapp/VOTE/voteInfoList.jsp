<%@page import="vote.InfoDAO"%>
<%@page import="vote.Info"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vote.Title"%>
<%@page import="vote.TitleDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		Title title = TitleDAO.instance.getTitle();
		ArrayList<Info> infoList = InfoDAO.instance.getInfoList();
	
		
	%>
	<jsp:include page="voteHeader.jsp"/>
 	<div align="center">
        <h3>투표진행상황</h3>
       		<h3> <%= title.getTitle()%></h3>
            <table border="1">   
            
                <tr>
                    <td width="150">항목 </td>
                    <td width="50" align="center">개수 </td>
                </tr>
                <%for(int i = 0; i < infoList.size(); i++){%>
	                <tr>
	                    <td ><%=infoList.get(i).getInfo()%></td>             
	                    <td align="center"><%=infoList.get(i).getCount()%></td>             
	                </tr>
	                
                <%}%>                    
            </table>
    </div>
