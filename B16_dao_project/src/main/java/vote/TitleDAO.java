package vote;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TitleDAO {
	public static TitleDAO instance = new TitleDAO();
	
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
	
	public void voateMake1Pro(String voteTitle, int voteSize)throws Exception {
		
	
		try{
			conn = getConnection();
			
			String sql = " INSERT INTO vote_title VALUES(? , ?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, voteTitle);
			pstmt.setInt(2, voteSize);
			int r = pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
	}
	public Title getTitle()throws Exception {
		Title title = null;
		
		try{
			
			conn = getConnection();
			String sql = " SELECT * FROM vote_title ";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()){
				title = new Title(rs.getString(1), rs.getInt(2));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		return title;
	}
	
		public void deleteTitle()  throws Exception{

		
		try{
			conn = getConnection();
			String sql = " DELETE FROM vote_title ";
			pstmt = conn.prepareStatement(sql);
		
			int check = pstmt.executeUpdate();
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
	}
	
}
