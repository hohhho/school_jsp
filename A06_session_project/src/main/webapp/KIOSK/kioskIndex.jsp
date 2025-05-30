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
		int[]    numberSample = {1001, 1002, 1003, 1004};
		String[] nameSample = {"와퍼" , "치즈와퍼", "치킨버거", "불고기버거"};
		int[]    priceSample = {4500, 4800, 5000, 3500};
		int[]    countSample = {5, 4, 5, 3};
		
		
		int maxSize = 1000;
		int[]    numberList = new int[maxSize];
		String[] nameList = new String[maxSize];
		int[]    priceList = new int[maxSize];
		int[]    countList = new int[maxSize];
		
		int size = 0;
		for(int i = 0; i < numberSample.length; i++){
			numberList[i] = numberSample[i];
			nameList[i] = nameSample[i];
			priceList[i] = priceSample[i];
			countList[i] = countSample[i];
			size += 1;
		}
		
		int lastNumber = 1004;
		
		
		
		
		session.setAttribute("numberList", numberList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("priceList", priceList);
		session.setAttribute("countList", countList);
		session.setAttribute("lastNumber", lastNumber);
		session.setAttribute("size", size);
		
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
</body>
</html>