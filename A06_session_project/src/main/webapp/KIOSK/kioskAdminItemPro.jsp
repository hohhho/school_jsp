<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	int size = (int)session.getAttribute("size");
    int lastNumber = (int)session.getAttribute("lastNumber");
	int[]    numberList = (int[])session.getAttribute("numberList");
	String[] nameList = (String[])session.getAttribute("nameList");
	int[]    priceList = (int[])session.getAttribute("priceList");
	int[]    countList =(int[])session.getAttribute("countList");
	
	
	String itemName = request.getParameter("itemName");
	int itemPrice = Integer.parseInt(request.getParameter("itemPrice"));
	int itemCount = Integer.parseInt(request.getParameter("itemCount"));
	
	lastNumber += 1;
	numberList[size] = lastNumber;
	nameList[size] = itemName;
	priceList[size] = itemPrice;
	countList[size] = itemCount;
	size += 1;
	
	session.setAttribute("numberList", numberList);
	session.setAttribute("nameList", nameList);
	session.setAttribute("priceList", priceList);
	session.setAttribute("countList", countList);
	session.setAttribute("lastNumber", lastNumber);
	session.setAttribute("size", size);
	
	response.sendRedirect("kioskAdminItemList.jsp");
	
    %>