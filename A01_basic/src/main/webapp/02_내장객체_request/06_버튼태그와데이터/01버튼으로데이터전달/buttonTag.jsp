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
			버튼태그로 데이터를 전달할때는 직접적어서 전달한다.
			"window.location.href='buttonTagPro.jsp?a=<%=a%>&b=<%=b%>&c=<%=c%>'"
			
			여기서 쌍따움표와 홑따옴표가 같이 사용된것을 알수있다. 오타가 심한 부분이니 주의해야한다. 
			window는 생략가능하다.
		 --%>
	 <%
	 	int a = 10;
	 	int b = 20;
	 	int c = 30;
	 %>
	 <button onclick="window.location.href='buttonTagPro.jsp?a=<%=a%>&b=<%=b%>&c=<%=c%>'">전송1</button>
	 
	  <button onclick="location.href='buttonTagPro.jsp?a=<%=a%>&b=<%=b%>&c=<%=c%>'">전송2</button>
</body>
</html>