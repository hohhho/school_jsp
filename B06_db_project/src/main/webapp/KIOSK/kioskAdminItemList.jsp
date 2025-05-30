<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	int maxSize = 1000;
	int[]    numberList = new int[maxSize];
	String[] nameList = new String[maxSize];
	int[]    priceList = new int[maxSize];
	int[]    countList = new int[maxSize];
	int size = 0;
	
	Connection conn = null;	
	PreparedStatement pstmt = null;	
	ResultSet rs = null;
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		
		String sql = "SELECT * FROM kiosk_menu";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
	
		while(rs.next()){
			numberList[size] =  rs.getInt(1);
			nameList[size] = rs.getString(2);
			priceList[size] = rs.getInt(3);
			countList[size] = rs.getInt(4);
			
			size += 1;
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


%>
	<jsp:include page="kioskHeader.jsp"/>
 <div align="center">
        <h3>전체목록</h3>

        <table border="1">
			<tr align="center">	
                <td width="150px">번호</td>
				<td width="250px">이름</td>
                <td width="250px">가격</td>
				<td width="150px">재고수량</td>
                <td >증가</td>
                <td >감소</td>
                <td >수정</td>
                <td >삭제</td>
			</tr>	
        
        <% for(int i = 0; i < size; i++) {%>
            <tr align="center">
                <td><%= numberList[i]%></td>
                <td><%= nameList[i] %> </td>
                <td><%= priceList[i] %></td>
                <td><%= countList[i] %></td>
                <td><button onclick="window.location.href='kioskAdminItemPlus.jsp?number=<%=numberList[i]%>'">증가</button></td>
                <td><button onclick="window.location.href='kioskAdminItemMinus.jsp?number=<%=numberList[i]%>'">감소</button></td>
                <td><button onclick="window.location.href='kioskAdminItemUpdateForm.jsp?number=<%=numberList[i]%>'">수정</button></td>
                <td><button onclick="window.location.href='kioskAdminItemDeletePro.jsp?number=<%=numberList[i]%>'">삭제</button></td>
            </tr>
        <%}%>
        </table>

       
    </div>
