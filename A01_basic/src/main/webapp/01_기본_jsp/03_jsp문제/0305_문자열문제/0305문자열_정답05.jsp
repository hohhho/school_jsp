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
            text는 학생 다섯 명의 점수를 기록한 데이터입니다.
            전체 평균과 일등의 점수를 출력하시오.
		*/
		
		/*
			[출력예시]
			평균 : 30.2
			일등 점수 : 80점
		*/
	%>
	
	<%
		String text = "13,32,80,3,23";
	    
		String[] token = text.split(",");
		
		int total = 0;
		int maxScore = 0;
		for(int i=0; i<token.length; i++) {
			int score = Integer.parseInt(token[i]);
			total += score;
			
			if(maxScore < score) {
				maxScore = score;
			}
		}
		
		double avg = (double)total / token.length;
	%>

	평균 : <%= avg %> <br>
	일등 점수 : <%= maxScore %>점
	
</body>
</html>