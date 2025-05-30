<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		[jsp:include]
			보통 탑은 네비게이션, 바텀은 회사 정보 등을 표시함
			그래서 탑과 바텀을 재사용하기 위해서 jsp:include 사용
			<jsp:include page="페이지" />
	 --%>


	<%-- top --%>
	<jsp:include page="_01_top.jsp" />
	
	<%-- center --%>
	<jsp:include page="_03_center.jsp" />
	
	<%-- bottom --%>
	<jsp:include page="_02_bottom.jsp" />
</body>
</html>