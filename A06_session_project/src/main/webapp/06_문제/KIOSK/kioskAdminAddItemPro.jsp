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
			
		String name = request.getParameter("name");
		String priceStr = request.getParameter("price");
		String countStr = request.getParameter("count");
		int price = (priceStr != null && !priceStr.isEmpty()) ? Integer.parseInt(priceStr) : -1;
		int count = (countStr != null && !countStr.isEmpty()) ? Integer.parseInt(countStr) : -1;
		
		int state = 0; // 1은 성공, 2는 이름 미기입, 3은 가격 미기입 혹은 오류, 4는 수량 미기입 혹은 오류
		boolean nameNull = name == null;
		boolean priceNullOrMinus = price <= 0;
		boolean countNullOrMinus = count <= 0;
		if(nameNull){
			state = 2;
		}else if(priceNullOrMinus){
			state = 3;			
		}else if(countNullOrMinus){
			state = 4;
		}else{
			state = 1;
		}
		
		if(state == 1){
			numList[lastIndex] = numList[lastIndex - 1] + 1;
			nameList[lastIndex] = name;
			priceList[lastIndex] = price;
			countList[lastIndex] = count;
			lastIndex++;
			
			session.setAttribute("numList", numList);
			session.setAttribute("nameList", nameList);
			session.setAttribute("priceList", priceList);
			session.setAttribute("countList", countList);
			session.setAttribute("lastIndex", lastIndex);
		}
		
	%>
	
	<jsp:include page="kioskHeader.jsp"></jsp:include>
	
	<div align="center">
		<%if(state == 1){ %>
			<h2>등록 완료!</h2>
		<%} else if(state == 2){%>
			<h2>등록 실패!</h2>
			<h3>상품 이름을 올바르게 입력하세요</h3>
		<%} else if(state == 3){%>
			<h2>등록 실패!</h2>
			<h3>상품 가격을 올바르게 입력하세요</h3>
		<%} else if(state == 4){%>
			<h2>등록 실패!</h2>
			<h3>상품 수량을 올바르게 입력하세요</h3>
		<%} %>
	</div>
</body>
</html>