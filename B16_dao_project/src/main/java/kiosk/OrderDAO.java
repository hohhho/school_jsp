package kiosk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class OrderDAO {
	public static OrderDAO instance = new OrderDAO();
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public Connection getConnection() throws Exception {
		String jdbcURL = "jdbc:mysql://localhost:3306/jsp_easy_project?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcURL, dbId, dbPw);
		
		return conn;
	}
	
	public void closeDatabase() throws Exception{
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
	
	public ArrayList<Order> getOrderList() throws Exception{
		ArrayList<Order> orderList = new ArrayList<Order>();
		try{
			conn = getConnection();
			String sql = "SELECT * FROM kiosk_order";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
			while(rs.next()){
				Order order = new Order(rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
				orderList.add(order);
			}		
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		return orderList;
	}
	
	public int kioskOrderPro(int orderCount , int number , String orderName , int orderPrice) throws Exception{
		
		int state = 0;
		int check = 0;

		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
		
		try{
			
			conn = getConnection();
			String sql = " SELECT count(*) FROM kiosk_menu WHERE menu_count >= ? and menu_number = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, orderCount);
			pstmt.setInt(2, number);
			rs = pstmt.executeQuery();
		
			while(rs.next()){
				
				check = rs.getInt(1);
			}		
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		if(check > 0){
			state = 1;
					
			try{
				
				conn = getConnection();
				String sql = "INSERT INTO kiosk_order VALUES(? , ? , ? , ?)";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, orderName);
				pstmt.setInt(2, orderPrice);
				pstmt.setInt(3, orderCount);
				int total = orderPrice * orderCount;
				pstmt.setInt(4, total );
				int r = pstmt.executeUpdate();
			
				
						
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				closeDatabase();
			}
			

			try{
				
				conn = getConnection();
				String sql = "UPDATE kiosk_menu SET menu_count = menu_count - ? WHERE menu_number = ? ";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, orderCount);
				pstmt.setInt(2, number);
				
				int r = pstmt.executeUpdate();
			
				
						
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				closeDatabase();
			}
							
		}else{
			state = 2;
		}
		
		return state;
	}
	
	public void deleteOrder ( ) throws Exception{
		
		try{
			
			conn = getConnection();
			String sql = " DELETE FROM kiosk_order ";
			pstmt = conn.prepareStatement(sql);
		
			int check = pstmt.executeUpdate();
			
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
	}
	
}
