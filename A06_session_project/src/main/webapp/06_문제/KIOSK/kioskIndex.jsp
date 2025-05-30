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
		int size = 1000;
		int[] numList = new int[size];	
		String[] nameList = new String[size];
		int[] priceList = new int[size];
		int[] countList = new int[size];
		int lastIndex = 0;
		
		int[] orderNumList = new int[size];	
		String[] orderNameList = new String[size];
		int[] orderPriceList = new int[size];
		int[] orderCountList = new int[size];
		int orderLastIndex = 0;
		
		int[] sampleNum = {1001, 1002, 1003, 1004};
		String[] sampleName = {"와퍼", "치즈와퍼", "치킨버거", "불고기버거"};
		int[] samplePrice = {4500, 4800, 5000, 3500};
		int[] sampleCount = {5, 4, 3, 2};
		
		for(int i=0; i<sampleNum.length; i++){
			numList[i] = sampleNum[i];
			nameList[i] = sampleName[i];
			priceList[i] = samplePrice[i];
			countList[i] = sampleCount[i];
			lastIndex++;
		}
		
		session.setAttribute("numList", numList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("priceList", priceList);
		session.setAttribute("countList", countList);
		session.setAttribute("lastIndex", lastIndex);
		
		session.setAttribute("orderNumList", orderNumList);
		session.setAttribute("orderNameList", orderNameList);
		session.setAttribute("orderPriceList", orderPriceList);
		session.setAttribute("orderCountList", orderCountList);
		session.setAttribute("orderLastIndex", orderLastIndex);
		
		response.sendRedirect("kioskMain.jsp");
	%>
</body>
</html>