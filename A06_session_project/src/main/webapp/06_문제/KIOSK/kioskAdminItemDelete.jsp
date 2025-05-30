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
		int[] numList = (int[])session.getAttribute("numList");
		String[] nameList = (String[])session.getAttribute("nameList");
		int[] priceList = (int[])session.getAttribute("priceList");
		int[] countList = (int[])session.getAttribute("countList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		
		int size = 1000;
		int[] deleteNumList = new int[size];	
		String[] deleteNameList = new String[size];
		int[] deletePriceList = new int[size];	
		int[] deleteCountList = new int[size];	
		
		int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
		
		int index = 0;
		for(int i=0; i<lastIndex; i++){
			if(i != targetIndex){
				deleteNumList[index] = numList[i];
				deleteNameList[index] = nameList[i];
				deletePriceList[index] = priceList[i];
				deleteCountList[index] = countList[i];
				index++;
			}
		}
		lastIndex--;
		
		session.setAttribute("numList", deleteNumList);
		session.setAttribute("nameList", deleteNameList);
		session.setAttribute("priceList", deletePriceList);
		session.setAttribute("countList", deleteCountList);
		session.setAttribute("lastIndex", lastIndex);
		
		response.sendRedirect("kioskAdminItemList.jsp");
	%>
</body>
</html>