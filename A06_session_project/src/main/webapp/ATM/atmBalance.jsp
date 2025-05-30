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
		int count = (int)session.getAttribute("count");
		String[] accountList = (String[])session.getAttribute("accountList");
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		int[] balanceList = (int[])session.getAttribute("balanceList");
	
		String log = (String)session.getAttribute("log");
		System.out.println(log);
		int index = 0;
		for(int i = 0; i < count; i++){
			if(log.equals(idList[i])){
				index = i;
				
				break;
			}
		}
		
		System.out.println(index);
		
	%>
		<jsp:include page="atmHeader.jsp"/>
	<div align="center">
				
       <h3>계좌조회</h3>
       <table border="1">
			<tr align="center">	
                <td>번호</td>
				<td width="250px">계좌번호</td>
                <td width="250px">아이디</td>
				<td width="150px">비밀번호</td>
				<td width="150px">회원이름</td>
                <td width="250px">예금액</td>
	              
			</tr>		           
	        <tr align="center">
	            <td><%= 1%></td>
	            <td><%= accountList[index] %></td>
	            <td><%= idList[index] %></td>
	            <td><%= pwList[index] %></td>
	            <td><%= nameList[index] %></td>
	            <td><%= balanceList[index] %></td>        
	        </tr>
       
		</table>
   
    </div>
</body>
</html>