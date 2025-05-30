<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int size = (int)session.getAttribute("size");
	int lastNumber = (int)session.getAttribute("lastNumber");
	int[]    numberList = (int[])session.getAttribute("numberList");
	String[] nameList = (String[])session.getAttribute("nameList");
	int[]    priceList = (int[])session.getAttribute("priceList");
	int[]    countList =(int[])session.getAttribute("countList");
	
	
	int index = Integer.parseInt(request.getParameter("index"));
	
	for(int i = index; i < size - 1; i++){
		numberList[i] = numberList[i + 1];
		nameList[i] = nameList[i + 1];
		priceList[i] = priceList[i + 1];
		countList[i] = countList[i + 1];
	}
	
	size -= 1;


	session.setAttribute("numberList", numberList);
	session.setAttribute("nameList", nameList);
	session.setAttribute("priceList", priceList);
	session.setAttribute("countList", countList);
	session.setAttribute("lastNumber", lastNumber);
	session.setAttribute("size", size);
	
	response.sendRedirect("kioskAdminItemList.jsp");

%>