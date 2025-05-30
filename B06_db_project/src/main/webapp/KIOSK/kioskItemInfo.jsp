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
<%

	int number = Integer.parseInt(request.getParameter("number"));
	
	int size = 1;
	int[] numberList = new int[size];	
	String[] nameList =  new String[size];
	int[] priceList =  new int[size];
	int[] countList =  new int[size];
	
	
	Connection conn = null;	
	PreparedStatement pstmt = null;	
	ResultSet rs = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = " SELECT * FROM kiosk_menu WHERE menu_number= ? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, number);
		rs = pstmt.executeQuery();
		while(rs.next()){
			numberList[0] = rs.getInt(1);
			nameList[0] = rs.getString(2);
			priceList[0] = rs.getInt(3);
			countList[0] = rs.getInt(4);
			
		}		
		
				
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		// [중요] db 사용후엔 반드시 닫아줘야한다. 		
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
		
		session.setAttribute("number", number);
		session.setAttribute("orderName", nameList[0]);
		session.setAttribute("orderPrice", priceList[0]);

%>



	<jsp:include page="kioskHeader.jsp"></jsp:include>
	<div align="center">
        <h3>전체목록</h3>
        <form action="kioskOrderPro.jsp">
            <table border="1">
                <tr align="center">	
                    <td width="250px">이름</td>
                    <td ><%= nameList[0] %></td>			
                </tr>		
                <tr align="center">
                    <td width="250px">가격</td>
                    <td><%=  priceList[0] %></td>
                </tr>
                <tr align="center">
                    <td width="250px">주문수량</td>
                    <td><input type="number" value="1" name="orderCount"></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" value="담기"></td>
                </tr>
            </table>  
           
        </form>
    </div>
</body>
</html>