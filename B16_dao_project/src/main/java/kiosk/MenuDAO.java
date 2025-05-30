package kiosk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MenuDAO {
	public static MenuDAO instance = new MenuDAO();
	
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
	
	public ArrayList<Menu> getMenuList() throws Exception{
		
		ArrayList<Menu> menuList = new ArrayList<Menu>();
		try{
			conn = getConnection();
			String sql = "SELECT * FROM kiosk_menu";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
			while(rs.next()){
				Menu menu = new Menu(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4));
				menuList.add(menu);
			}		
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		return menuList;

	}
	public Menu kioskItemInfo(int number) throws Exception{
			
		Menu menu = null;
		try{
			
			conn = getConnection();
			String sql = " SELECT * FROM kiosk_menu WHERE menu_number= ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			rs = pstmt.executeQuery();
			while(rs.next()){
				menu = new Menu( rs.getInt(1),  rs.getString(2),  rs.getInt(3),  rs.getInt(4));		
			}					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
			
		return menu;
	}
	
	public void adminItemPlus(int number) throws Exception{	
		try{
			
			conn = getConnection();
			String sql = "UPDATE kiosk_menu SET menu_count = menu_count + 1  WHERE menu_number = ?  ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}

	}
	public void adminItemMinus(int number) throws Exception{	
		try{
			conn = getConnection();
			
			String sql = "UPDATE kiosk_menu SET menu_count = menu_count - 1  WHERE menu_number = ? and menu_count > 0 ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.executeUpdate();
								
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
	}
	public Menu adminUpdateForm(int number) throws Exception{
		Menu menu = null;	
		try{
			conn = getConnection();
			String sql = " SELECT * FROM kiosk_menu WHERE menu_number= ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			rs = pstmt.executeQuery();
			while(rs.next()){
				menu = new Menu( rs.getInt(1),rs.getString(2) ,  rs.getInt(3),  rs.getInt(4));		
			}		
								
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		return menu;
	}
	public void adminUpdatePro(int number , String itemName, int itemPrice, int itemCount) throws Exception{


		try{
			conn = getConnection();
			String sql = " UPDATE kiosk_menu SET menu_name = ? , menu_price = ? , menu_count = ?  WHERE menu_number = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, itemName);
			pstmt.setInt(2, itemPrice);
			pstmt.setInt(3, itemCount);
			pstmt.setInt(4, number);
			int result = pstmt.executeUpdate();
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
	}
	
	public void adminItemDeletePro(int number) throws Exception{

		
		try{
			conn = getConnection();
			String sql = "DELETE FROM kiosk_menu WHERE menu_number = ?  ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
	}
}
