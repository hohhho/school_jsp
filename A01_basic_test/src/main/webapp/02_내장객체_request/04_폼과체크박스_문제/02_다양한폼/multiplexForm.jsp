<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
		
		<form action="multiplexFormPro.jsp" method="post">
			<table border=1>
				<tr>
					<td>학번</td>
					<td>
						<input type="text" name="num">
					</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>
						<input type="text" name="name">
					</td>
				</tr>
				<tr>
					<td>학년</td>
					<td>
						<input type="radio" name="grade" value="1학년" id="g1"> <label for="g1">1학년</label>
						<input type="radio" name="grade" value="2학년" id="g2"> <label for="g2">2학년</label>
						<input type="radio" name="grade" value="3학년" id="g3"> <label for="g3">3학년</label>
						<input type="radio" name="grade" value="4학년" id="g4"> <label for="g4">4학년</label>
					</td>
				</tr>
				<tr>
					<td>선택과목</td>
					<td>
						<select name="subject">
							<option>JAVA</option>
							<option>JSP</option>
							<option>SPRING</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
						<input type="checkbox" name="hobbies" value="운동" id="workout"><label for="workout">운동</label>
						<input type="checkbox" name="hobbies" value="독서" id="read"><label for="read">독서</label>
						<input type="checkbox" name="hobbies" value="공부" id="study"><label for="study">공부</label>
						<input type="checkbox" name="hobbies" value="쇼핑" id="shopping"><label for="shopping">쇼핑</label>
					</td>
				</tr>
				<tr>
					<td>메모</td>
					<td>
						<textarea name="memo" rows="10" cols="50"></textarea>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="입력완료">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>