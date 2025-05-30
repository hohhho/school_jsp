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
		//샘플 데이터 저장
		String[] sampleId = {"a","b","c","d","e"};
		String[] samplePw = {"1","2","3","4","5"};
		String[] sampleName = {"1", "2", "3", "4", "5"};
		String[] sampleGender = {"남성", "남성", "여성", "여성", "여성"};
		
		int size = 1000;
		
		String[] idList = new String[size]; 
		String[] pwList = new String[size];
		String[] nameList = new String[size];
		String[] genderList = new String[size];
		int lastIndex = 0;
		
		for(int i = 0; i < sampleId.length; i++){
			idList[i] = sampleId[i];
			pwList[i] = samplePw[i];
			nameList[i] = sampleName[i];
			genderList[i] = sampleGender[i];
			lastIndex++;
		}
		
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
		session.setAttribute("lastIndex", lastIndex);
		session.setAttribute("log",null);
		
		//관리자 아이디, 비밀번호 저장
		session.setAttribute("adminId", "admin");
		session.setAttribute("adminPw", "admin");
		session.setAttribute("adminLog",null);
		
		response.sendRedirect("member/main.jsp");
	%>
</body>
</html>