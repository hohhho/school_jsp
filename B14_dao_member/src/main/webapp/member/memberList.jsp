
<%@page import="member.MemberDAO"%>
<%@page import="member.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
		ArrayList<Member> memberList = MemberDAO.instance.getMemberList();
	%>


	<jsp:include page="memberHeader.jsp"></jsp:include>

	<div align="center">
		<h1>회원전체정보</h1>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이름</td>
				<td>성별</td>
			</tr>
		
		<%
			for(int i=0; i<memberList.size(); i++) {
		%>
			<tr>
				<td><%= memberList.get(i).getId() %></td>
				<td><%= memberList.get(i).getPw() %></td>
				<td><%= memberList.get(i).getName() %></td>
				<td><%= memberList.get(i).getGender() %></td>
			</tr>
		<%		
			}
		%>
		
		</table>

	</div>
