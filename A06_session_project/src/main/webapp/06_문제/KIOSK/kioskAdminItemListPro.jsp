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
		int[] countList = (int[])session.getAttribute("countList");
	
		int which = Integer.parseInt(request.getParameter("which"));
		int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
	
		switch(which){
		case 1:
			countList[targetIndex] += 1;
			break;
		case 2:
			countList[targetIndex] -= 1;
			break;
		}
		
		session.setAttribute("countList", countList);
		
		response.sendRedirect("kioskAdminItemList.jsp");
	%>
</body>
</html>