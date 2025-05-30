package vote;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class InfoDAO {
	public static InfoDAO instance = new InfoDAO();
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
	
	public void voteMake2Pro(int voteSize , String[] voteInfoList) throws Exception{
		

		
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
		
		for(int i = 0; i < voteSize; i++){
			try{
				conn = getConnection();
				String sql = " INSERT INTO vote_info  VALUES( ? , ? , 0 ) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, i + 1);
				pstmt.setString(2, voteInfoList[i]);
				
				int result = pstmt.executeUpdate();
				System.out.println(result);	
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				closeDatabase();
			}	
		}
	}
	
	public ArrayList<Info> getInfoList() throws Exception{
		
		ArrayList<Info> infoList = new ArrayList<Info>();
		try{
			conn = getConnection();
			String sql = " SELECT * FROM vote_info";
			pstmt = conn.prepareStatement(sql);
		
			
			rs = pstmt.executeQuery();
			while(rs.next()){
				Info info = new Info(rs.getInt(1),  rs.getString(2),  rs.getInt(3));
				infoList.add(info);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		return infoList;
	}
	
	public void votePro(int number) throws Exception{
		

		try{
			
			conn = getConnection();
			String sql = " UPDATE vote_info SET vote_count = vote_count + 1 WHERE vote_number = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			
			int result = pstmt.executeUpdate();
			System.out.println(result);	
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}	
	}
	
	public void deleteInfo()  throws Exception{

		
		try{
			conn = getConnection();
			String sql = " DELETE FROM vote_info ";
			pstmt = conn.prepareStatement(sql);
		
			int check = pstmt.executeUpdate();
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
	}
	
}
