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
		request.setCharacterEncoding("UTF-8");

		
		String[] idList = (String[])session.getAttribute("idList");
		String[] pwList = (String[])session.getAttribute("pwList");
		String[] nameList = (String[])session.getAttribute("nameList");
		String[] genderList = (String[])session.getAttribute("genderList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		String log = (String)session.getAttribute("log");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		
		int index = 0;
		for(int i = 0; i < lastIndex; i++){
			if(log.equals(idList[i])){
				index = i;
				break;
			}
		}
		
		pwList[index] = pw;
		nameList[index] = name;
		genderList[index] = gender;
		
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
	%>
	
	<%-- navigator --%>
	<jsp:include page="navigator.jsp"></jsp:include>
	
	<div align="center">
		<h2>수정 완료</h2>
	</div>
</body>
</html>