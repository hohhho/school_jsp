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
			
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		
		int state = 1; // 1이면 성공, 2는 아이디 중복, 3은 입력하지 않은 칸 있음
		boolean check = id == null || id.isEmpty() ||
						pw == null || pw.isEmpty() ||
						name == null || name.isEmpty() ||
						gender == null || gender.isEmpty();
		if(check){
			state = 2;
		}else{
			for(int i = 0; i < lastIndex; i++){
				if(idList[i].equals(id)){
					state = 3;
					break;
				}
			}
		}
		
	%>
	
	<%-- navigator --%>
	<jsp:include page="navigator.jsp"></jsp:include>
	
	<div align="center">
		<%if(state == 1) {%>
			<%
				idList[lastIndex] = id;
				pwList[lastIndex] = pw;
				nameList[lastIndex] = name;
				genderList[lastIndex] = gender;
				lastIndex++;
				
				session.setAttribute("idList", idList);
				session.setAttribute("pwList", pwList);
				session.setAttribute("nameList", nameList);
				session.setAttribute("genderList", genderList);
				session.setAttribute("lastIndex", lastIndex);
			%>
			<h2>회원가입 성공</h2>
		<%} else if(state == 2) {%>
			<h2>회원가입 실패</h2>
			<h3>빈 칸을 모두 입력하세요</h3>
		<%} else if(state == 3){ %>
			<h2>회원가입 실패</h2>
			<h3>이미 사용중인 id입니다</h3>
		<%} %>
	</div>
</body>
</html>