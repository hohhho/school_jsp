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
	
	
	public int joinPro(Member member)  throws Exception{
		
		
		int check = 0;
			
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
	
		try{
			
			conn = getConnection();
			
			String sql = "SELECT COUNT(*) FROM member WHERE memberId=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
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
		
		if(check == 0){
			
			try{
				
				conn = getConnection();
				
				String sql = " INSERT INTO member  VALUES(? , ? , ? , ? ) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, member.getId());
				pstmt.setString(2, member.getPw());
				pstmt.setString(3, member.getName());
				pstmt.setString(4, member.getGender());
				pstmt.executeUpdate();
				
						
			}catch(Exception e){
				e.printStackTrace();
			}finally{				
				closeDatabase();				
			}
		}
		
		return check;
	}
	
	public ArrayList<Member> getMemberList()  throws Exception{
		
		ArrayList<Member> memberList = new ArrayList<Member>();

		try{
			conn = getConnection();
			
			String sql = "SELECT * FROM member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Member member = new Member(rs.getString(1) ,rs.getString(2) ,
						rs.getString(3), rs.getString(4));
				memberList.add(member);				
			}							
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();		
		}
		return memberList;
		
	}
	public int loginPro(String id, String pw)  throws Exception{

	
		int check = 0;
		try{
			conn = getConnection();
			String sql = " SELECT COUNT(*) FROM member WHERE memberId=? and memberPw=? ";
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
	public Member updateForm(String log)  throws Exception{
		Member member = null;
		
		try{
			
			conn = getConnection();
			String sql = " SELECT * FROM member WHERE memberId= ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, log);
			rs = pstmt.executeQuery();
			while(rs.next()){
				 member = new Member(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
			
			}					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		return member;
	}
	
	public int updatePro(Member member)  throws Exception{
		int check = 0;
		

	
		try{
			conn = getConnection();
			
		
			String sql = " UPDATE member SET memberPw = ? , memberName = ? , memberGender = ?  WHERE memberId = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getPw());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getGender());
			pstmt.setString(4, member.getId());
			check = pstmt.executeUpdate();
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		return check;
		
	}
	public int  deletePro(String log, String pw)  throws Exception{
		int check = 0;
		
	
		try{
			conn = getConnection();
			String sql = " DELETE FROM member WHERE memberId = ? and memberPw = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, log);
			pstmt.setString(2, pw);
			check = pstmt.executeUpdate();
			
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		return check;
		
	}
}
