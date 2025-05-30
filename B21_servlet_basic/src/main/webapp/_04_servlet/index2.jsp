<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  
<%--
	서블릿을 이용하는경우 이동할때마다 프로젝트명을 앞에 붙여줘야한다. 

--%> 

<script>
	let cp = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2)); // 파일 전체 이름에서 두 번째 슬래시까지 자른 것
	console.log(window.location.pathname); // 파일 전체 이름
	console.log(cp);
	
	location.href = cp+"/test2.do";	
</script>   