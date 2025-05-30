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
			
		String pw = request.getParameter("pw");
		
		int index = 0;
		for(int i = 0; i < lastIndex; i++){
			if(log.equals(idList[i])){
				index = i;
				break;
			}
		}
		
		int state = 0; // 1: 비밀번호 일치, 0: 비밀번호 불일치
		if(pw.equals(pwList[index])){
			state = 1;
		}
		
		if(state == 1){
			String[] tempIdList = new String[1000];
			String[] tempPwList = new String[1000];
			String[] tempNameList = new String[1000];
			String[] tempGenderList = new String[1000];
			
			int k = 0;
			for(int i = 0; i < lastIndex; i++){
				if(i != index){
					tempIdList[k] = idList[i];
					tempPwList[k] = pwList[i];
					tempNameList[k] = nameList[i];
					tempGenderList[k] = genderList[i];
					k++;
				}
			}
			lastIndex--;
			
			session.setAttribute("idList", tempIdList);
			session.setAttribute("pwList", tempPwList);
			session.setAttribute("nameList", tempNameList);
			session.setAttribute("genderList", tempGenderList);
			session.setAttribute("lastIndex", lastIndex);
			session.setAttribute("log", null);
		}
		
		
		
	%>
	
	<%-- navigator --%>
	<jsp:include page="navigator.jsp"></jsp:include>
	
	<div align="center">
		<h2>회원탈퇴</h2>
		<%if(state == 0){ %>
			<h3>회원탈퇴 실패</h3>
			<h4>비밀번호 불일치</h4>
		<%} else if(state == 1){%>
			<h2>회원탈퇴 성공</h2>
		<%} %>
	</div>
</body>
</html>