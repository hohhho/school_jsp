

<%@page import="vote.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String voteTitle = (String)session.getAttribute("voteTitle");
		int voteSize = (Integer)session.getAttribute("voteSize");
			
		String[] voteInfoList = new String[voteSize];
		for(int i = 0; i < voteSize; i++){
			String str = "voteInfo" + i;
			voteInfoList[i] = request.getParameter(str);
		}

		InfoDAO.instance.voteMake2Pro(voteSize, voteInfoList);
	%>
	
	<jsp:include page="voteHeader.jsp"/>
    <div align="center">
        <h1>투표 작성 완료 </h1>
    </div>
	