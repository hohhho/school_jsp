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
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		String[] genderList = (String[])session.getAttribute("genderList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		String log = (String)session.getAttribute("log");
		
		int index = 0;
		for(int i = 0; i < lastIndex; i++){
			if(log.equals(idList[i])){
				index = i;
				break;
			}
		}
		
	%>
	
	<%-- navigator --%>
	<jsp:include page="navigator.jsp"></jsp:include>
	
	<div align="center">
		<h2>회원정보 수정</h2>
		<form method="post" action="updatePro.jsp">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td>
						<%=idList[index] %>
					</td>
				</tr>
				
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="pw" value="<%=pwList[index]%>">
					</td>
				</tr>
				
				<tr>
					<td>이름</td>
					<td>
						<input type="text" name="name" value="<%=nameList[index]%>">
					</td>
				</tr>
				
				<tr>
					<td>성별</td>
					<td>
						<%if(genderList[index].equals("남성")) {%>
							<input type="radio" name="gender" value="남성" checked>남성
							<input type="radio" name="gender" value="여성">여성
						<%} else{%>
							<input type="radio" name="gender" value="남성" >남성
							<input type="radio" name="gender" value="여성" checked>여성
						<%} %>
						
					</td>
				</tr>
				
				<tr>
					<td align="center" colspan="2">
							<input type="submit" value="입력완료">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>