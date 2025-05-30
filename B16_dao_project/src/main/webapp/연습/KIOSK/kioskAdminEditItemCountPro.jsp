<%@page import="kiosk_연습.MenuDAO"%>
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
	int editType = Integer.parseInt(request.getParameter("editType"));
	int targetNum = Integer.parseInt(request.getParameter("targetNum"));

	if(editType == 1){
		MenuDAO.instance.itemCountPlus(targetNum);
	}else if(editType == 2){
		MenuDAO.instance.itemCountMinus(targetNum);
	}
	
	response.sendRedirect("kioskAdminEditItemForm.jsp");
%>
</body>
</html>