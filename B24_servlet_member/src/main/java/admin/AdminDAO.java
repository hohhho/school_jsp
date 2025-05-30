package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import member.Member;


public class AdminDAO {
	public static AdminDAO instance = new AdminDAO();
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public Connection getConnection() throws Exception {
		String jdbcURL = "jdbc:mysql://localhost:3306/jsp_easy_member?serverTimezone=UTC&useSSL=false";
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
	
	public int adminLoginPro(String id, String pw) throws Exception{
		
		int check = 0;
		try{
			
			conn = getConnection();
			String sql = " SELECT COUNT(*) FROM admin WHERE adminId=? and adminPw=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int count = rs.getInt(1);
				if(count > 0){
					check = 1;	
					
				}
			}		
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		return check;
	}
	public void deleteUser(String id) throws Exception{

		try{
		
			conn = getConnection();
			String sql = " DELETE FROM member WHERE memberId = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
	}
}
