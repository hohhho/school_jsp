<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int size = 1000;
String[] orderNameList = new String[size];
int[] orderPriceList = new int[size];
int[] orderCountList = new int[size];
int[] orderTotalList = new int[size];
int orderSize = 0;

session.setAttribute("orderNameList", orderNameList);
session.setAttribute("orderPriceList", orderPriceList);
session.setAttribute("orderCountList", orderCountList);
session.setAttribute("orderTotalList", orderTotalList);
session.setAttribute("orderSize", orderSize);

response.sendRedirect("kioskMain.jsp");
%>