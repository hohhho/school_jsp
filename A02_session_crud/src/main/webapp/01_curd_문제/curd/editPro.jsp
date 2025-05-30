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
		int[] arr = (int[])session.getAttribute("arr");
		int index = (int)session.getAttribute("index");
		int editTargetIndex = (int)session.getAttribute("editTargetIndex");
		
		int editValue = Integer.parseInt(request.getParameter("editValue"));
		
		arr[editTargetIndex] = editValue;
		
		session.setAttribute("arr", arr);
		
		System.out.println("[메시지] 수정을 완료하였습니다.");
		
		response.sendRedirect("list.jsp");
	%>
	
	
</body>
</html>