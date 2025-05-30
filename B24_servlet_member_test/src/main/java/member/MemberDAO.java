package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	public static MemberDAO instance = new MemberDAO();
	
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
	
	public ArrayList<Member> getMemberList() throws Exception{
		ArrayList<Member> memberList = new ArrayList<>();
		
		try {
			
			conn = getConnection();
			
			String sql = " SELECT * FROM member ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String id =  rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String gender = rs.getString(4);
				
				Member temp = new Member(id,pw,name,gender);
				memberList.add(temp);
			}
			
			
		}catch(Exception e) {
			
		}finally {
			closeDatabase();
		}
		
		return memberList;
	}
}
