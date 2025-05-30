<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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


%>
	<jsp:include page="kioskHeader.jsp"/>
	<div align="center">
        <h3>상품 수정 </h3>
        <form action="kioskAdminItemUpdatePro.jsp">
            <table border="1">
                <tr>
                    <td>상품이름</td>
                    <td><input name="itemName" value="<%=nameList[0] %>"></td>
                </tr>
                <tr>
                    <td>가격</td>
                    <td><input name="itemPrice" value="<%=priceList[0] %>"></td>
                </tr>
                <tr>
                    <td>개수</td>
                    <td><input name="itemCount" value="<%=countList[0] %>"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit"></td>             
                </tr>
            </table>
        </form>
    </div>
