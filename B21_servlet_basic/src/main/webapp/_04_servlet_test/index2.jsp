<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<script>
	
		let cp = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));
		console.log(window.location.pathname);
		console.log(cp);
		
		location.href = cp + "/test222.do";
	</script>
</body>
</html>