<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int size = (int)session.getAttribute("size");

int[]    numberList = (int[])session.getAttribute("numberList");
String[] nameList = (String[])session.getAttribute("nameList");
int[]    priceList = (int[])session.getAttribute("priceList");
int[]    countList =(int[])session.getAttribute("countList");

int index = Integer.parseInt(request.getParameter("index"));
countList[index] += 1;

session.setAttribute("countList", countList);
response.sendRedirect("kioskAdminItemList.jsp");

%>

