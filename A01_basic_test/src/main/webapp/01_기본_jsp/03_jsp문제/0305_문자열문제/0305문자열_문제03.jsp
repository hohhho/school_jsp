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
		/*
		    [문제]
            아래는 학생과 점수 데이터입니다.
            시험점수는 60점 이상이면 합격입니다.
            합격한 사람 점수를 문자열에 저장해서 출력하시오.
            단, 데이터 구분자는 ,(콤마)를 중간에 삽입합니다.
		*/
		
		/*
			[출력예시]
			92,63
		*/
	%>
	
	<%
		int[] scores = {12, 92, 54, 63};
		String result = "";
	%>
	
	<%
		for(int i = 0; i < scores.length; i++){
			if(scores[i] >= 60){
				result += scores[i];
				result += ",";
			}
		}
	%>
	<%
		result = result.substring(0, result.length()-1);
	%>
	<%=result %>

</body>
</html>