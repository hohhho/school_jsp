
<%@page import="member.MemberDAO"%>
<%@page import="member.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
	ArrayList<Member>memberList = MemberDAO.instance.getMemberList();

%>
	
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<div align="center">
		<h1>관리자 페이지(회원 정보 확인하기)</h1>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이름</td>
				<td>성별</td>
				<td>삭제</td>
			</tr>
		
		<%
			for(int i=0; i<memberList.size(); i++) {
		%>
			<tr>
				<td><%= memberList.get(i).getId() %></td>
				<td><%= memberList.get(i).getPw() %></td>
				<td><%=  memberList.get(i).getName()  %></td>
				<td><%=  memberList.get(i).getGender()  %></td>
				<td><input type="button" value="삭제" onclick="location.href='adminUserDeletePro.jsp?id=<%=memberList.get(i).getId()  %>'"></td>
			</tr>
		<%		
			}
		%>
		</table>	
	</div>
