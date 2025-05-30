package db01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BasicDAO2 {
	public static BasicDAO2 instance = new BasicDAO2();
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public void selectTest01() throws Exception{
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy1?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT * FROM basic WHERE a=10";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int a = rs.getInt(1);
				double b = rs.getDouble(2);
				String c = rs.getString(3);
				
				System.out.println(a);
				System.out.println(b);
				System.out.println(c);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
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
	}
	
	public void selectTest02() throws Exception{
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy1?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = " SELECT * FROM basic WHERE c='bye' ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int a = rs.getInt(1);
				double b = rs.getDouble(2);
				String c = rs.getString(3);
				
				System.out.println(a);
				System.out.println(b);
				System.out.println(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
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
	}
}
