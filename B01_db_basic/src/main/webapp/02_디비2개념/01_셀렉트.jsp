<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
			아래변수3개를 임포트 한다. 
			<%@page import="java.sql.ResultSet"%>
			<%@page import="java.sql.PreparedStatement"%>
			<%@page import="java.sql.Connection"%>
				
			추가로 임포트한개를 더한다. 
			<%@page import="java.sql.DriverManager"%>
			
			순서는 DriverManager 가 컴퓨터에 깔린 mysql 과 연결하고 그연결결과를 
			Connection 에 넘겨준다.
			
			Connection 은 아이디와 비밀번호로 db에 로그인을 한후  SELECT * FROM member WHERE id='qwer'
			이와같은 쿼리문을 PreparedStatement 에 넘겨준다. 
			
			PreparedStatement 는 쿼리문을 실행시키고 mysql로 접근해 데이터를 추출한후, 
			그 결과 데이터를 ResultSet 에 넘겨준다. 
			
			
			
			디비연결과 같은 작업은 아주 중요한작업이기때문에 반드시 try catch 를 강제적으로 사용해야한다. 
			
			
			디비연결이 끝난후 Connection , PreparedStatement , ResultSet 세개 전부 close를 해야한다.
			디비연결해제느 아주 중요한작업이기때문에 절대로 잊으면안된다. 떄문에
			finally {} 안에 작성하면 무조건실행된다. 
	 --%>

<%	
		
		// [1] db와 연결한고, 쿼리문을 저장한다. [예시] SELECT * FROM member WHERE id='qwer'
		Connection conn = null;


		// [2] 위의 변수 conn 에게서 쿼리문을 넘겨받고, 쿼리문을 실행할수있다. 
		PreparedStatement pstmt = null;
		
		
		// [3] 쿼리문이 실행되면 결과를 다시 보내주는데, db에서 보내주는 데이터 저장.
		ResultSet rs = null;
		/*
			넘어온데이터는 rs변수에 담겨서오며, 2차원배열형태로 넘어온다. 
			세로를 row 라고하고 , 가로를 column  이라고한다.
		 	넘어온 데이터의 첫번째 row는 비어있다. 
		 	그림으로 표현해보면 아래와 같다. 
		 	
		 			1번column , 2번column , 3번column , 4번column
		 	1번 row  []
		 	2번 row  [1001]      ['qwer']   ['1234']   ['홍길동']
		 	
		*/
		/*
			row이동은 rs.next() 를 사용한다. 
			
			컴럼을 찾을때는 자료형을 일치 시켜서 , 앞에서부터 1, 2, 3 ,4 순서대로 찾는다.
			rs.getInt(1) 은 '1001 이된다.
			rs.getString(2) 은 'qwer' 이된다.
			rs.getString(3) 은 '1234' 이된다.
			rs.getString(4) 은 '홍길동' 이된다.
		*/
				
		try{
			
			
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy2?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT * FROM member WHERE id='qwer'";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery(); 
			
			rs.next();
			
			System.out.println(rs.getInt(1));
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
			if(conn != null){
				conn.close();			
			}
			if(pstmt != null){
				pstmt.close();	
			}
			if(rs != null){
				rs.close();
			}
		}
	%>
</body>
</html>