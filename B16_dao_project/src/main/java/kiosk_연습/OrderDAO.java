package kiosk_연습;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class OrderDAO {
	public static OrderDAO instance = new OrderDAO();
	
	// 인스턴스 변수 conn, pstmt, rs 생성
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	// getConnection() -> Connection 타입 리턴
	public Connection getConnection() throws Exception{
		String jdbcURL = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcURL, dbId, dbPw);
		
		return conn;
	}
	
	
	// closeDatabase()
	public void closeDatabase() throws Exception{
		if(conn != null) {
			conn.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
		if(rs != null) {
			rs.close();
		}
	}
	
	// getOrderList() -> ArrayList<Order> 타입 리턴
	public ArrayList<Order> getOrderList() throws Exception{
		
		// ArrayList 선언
		ArrayList<Order> orderList = new ArrayList<>();
		
		// DB 처리
		try {
			conn = getConnection();
			
			String sql = " SELECT * FROM kiosk_order ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Order temp = new Order(rs.getString(1), rs.getInt(2), rs.getInt(3),rs.getInt(4));
				
				orderList.add(temp);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return orderList;
	}
	
	
	// orderMenu -> 매개변수로 상품 번호, 주문 수량 받음 // state(int) 반환(1 = 주문 성공, 2 = 주문 실패)
	public int orderMenu(int targetNum, int orderCount) throws Exception{
		
		int state = 0;
		
		try {
			conn = getConnection();
			
			// 타겟 상품 수량, 이름, 가격 가져오기
			String sql = " SELECT menu_count, menu_name, menu_price FROM kiosk_menu WHERE menu_number=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, targetNum);
			rs = pstmt.executeQuery();
			
			int targetCount = 0;
			String targetName = "";
			int targetPrice = 0;
			
			if(rs.next()) {
				targetCount = rs.getInt(1);
				targetName = rs.getString(2);
				targetPrice = rs.getInt(3);
				
			}
			
			// 타겟 상품 수량이 주문 수량보다 적으면 state = 2 반환, 아니면 DB에 상품 수량 업데이트
			if(targetCount - orderCount < 0) {
				state = 2;
			}else {
				sql = " UPDATE kiosk_menu SET menu_count = menu_count - ? WHERE menu_number=? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, orderCount);
				pstmt.setInt(2, targetNum);
				
				int updateCount = pstmt.executeUpdate();
				
				
				// kiosk_order 테이블에도 주문 저장
				sql = " INSERT INTO kiosk_order(order_name, order_price, order_count, order_total) VALUES(?, ?, ?, ?) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, targetName);
				pstmt.setInt(2, targetPrice);
				pstmt.setInt(3, orderCount);
				pstmt.setInt(4, orderCount * targetPrice);
				
				int insertCount = pstmt.executeUpdate();
				System.out.println(insertCount);
				
				if(updateCount == 1 && insertCount == 1) {
					state = 1;
				}else {
					state = 2;
				}
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return state;
	}
	
	// deleteAllOrder
	public int deleteAllOrder() throws Exception{
		
		// state = 1 : 삭제 성공, state = 2 : 삭제 실패
		int state = 0;
		
		try {
			conn = getConnection();
			
			String sql = " DELETE FROM kiosk_order ";
			pstmt = conn.prepareStatement(sql);
			
			int deleteCount = pstmt.executeUpdate();
			System.out.println(deleteCount);
			
			if(deleteCount > 0) {
				state = 1;
			}else {
				state = 2;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return state;
	}
		
	
}
