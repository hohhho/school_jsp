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
		
		int deleteIndex = Integer.parseInt(request.getParameter("deleteIndex"));
		
		String[] tempIdList = new String[1000];
		String[] tempPwList = new String[1000];
		String[] tempNameList = new String[1000];
		String[] tempGenderList = new String[1000];
		
		int k = 0;
		for(int i = 0; i<lastIndex; i++){
			if(i != deleteIndex){
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

	%>
	
	<%-- admin navigator --%>
	<jsp:include page="adminNavigator.jsp"></jsp:include>
	
	<div align="center">
		<h2>삭제 완료</h2>
	</div>
</body>
</html>