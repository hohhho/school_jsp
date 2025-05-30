package kiosk_연습;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MenuDAO {
	
	// static 객체 instance 생성
	public static MenuDAO instance = new MenuDAO();
	
	
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
	
	
	// getMenuList() -> ArrayList<Menu> 타입 리턴
	public ArrayList<Menu> getMenuList() throws Exception{
		
		// ArrayList 선언
		ArrayList<Menu> menuList = new ArrayList<>();
		
		// DB 처리
		try {
			conn = getConnection();
			
			String sql = " SELECT * FROM kiosk_menu ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Menu temp = new Menu(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4));
				
				menuList.add(temp);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return menuList;
	}
	
	// getTargetMenuInfo -> Menu 클래스 타입 리턴, 매개변수로 타겟 상품 번호 받음
	public Menu getTargetMenuInfo(int targetNum) throws Exception {
		
		Menu targetMenu = new Menu();
		
		// kiosk_menu 테이블 -> 타겟 상품 정보 가져오기
		try {
			conn = getConnection();
			
			String sql = " SELECT menu_name, menu_price, menu_count FROM kiosk_menu WHERE menu_number=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, targetNum);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				targetMenu.setNumber(targetNum);
				targetMenu.setName(rs.getString(1));
				targetMenu.setPrice(rs.getInt(2));
				targetMenu.setCount(rs.getInt(3));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
			
		return targetMenu;
	}
	
	// itemCountPlus
	public void itemCountPlus(int targetNum) throws Exception{
		
		try {
			conn = getConnection();
			
			String sql = " UPDATE kiosk_menu SET menu_count = menu_count+1 WHERE menu_number=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, targetNum);
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		
	}
	
	// itemCountMinus
	public void itemCountMinus(int targetNum) throws Exception{
		
		
		try {
			conn = getConnection();
			
			// 기존 수량 체크
			String sql = " SELECT menu_count FROM kiosk_menu WHERE menu_number=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, targetNum);
			rs = pstmt.executeQuery();
			
			int targetCount = 0;
			if(rs.next()) {
				targetCount = rs.getInt(1);
			}
			
			// 기존 수량이 0보다 크면 감소 실행
			if(targetCount > 0) {
				sql = " UPDATE kiosk_menu SET menu_count = menu_count-1 WHERE menu_number=? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, targetNum);
				
				pstmt.executeUpdate();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
	}
	
	// editItemInfo
	public int editItemInfo(int targetNum, String name, int price, int count) throws Exception {
		int state = 0; // 1은 성공, 2는 실패
		
		try {
			conn = getConnection();
			
			String sql = " UPDATE kiosk_menu SET menu_name=?, menu_price=?, menu_count=? WHERE menu_number=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setInt(3, count);
			pstmt.setInt(4, targetNum);
			
			int updateCount = pstmt.executeUpdate();

			state = updateCount > 0 ? 1 : 2;
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return state;
	}
	
	// deleteOneItem
	public int deleteOneItem(int targetNum) throws Exception{
		int state = 0; // 1은 성공, 2는 실패
		
		try {
			conn = getConnection();
			
			String sql = " DELETE FROM kiosk_menu WHERE menu_number=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, targetNum);
			
			int deleteCount = pstmt.executeUpdate();

			state = deleteCount > 0 ? 1 : 2;
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return state;
	}
	
	// addNewItem
	public int addNewItem(int number, String name, int price, int count) throws Exception{
		int state = 0; // 1은 성공, 2는 실패
		
		try {
			conn = getConnection();
			
			String sql = " INSERT INTO kiosk_menu(menu_number, menu_name, menu_price, menu_count) VALUES(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setString(2, name);
			pstmt.setInt(3, price);
			pstmt.setInt(4, count);
			
			int insertCount = pstmt.executeUpdate();
			
			System.out.println(insertCount);
			state = insertCount > 0 ? 1 : 2;
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return state;
	}
	
}
