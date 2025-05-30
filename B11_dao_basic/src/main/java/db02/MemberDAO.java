package db02;

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
	
	
	
	public void selectTest01() throws Exception {
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy2?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT number , name FROM member where id='hello' ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); 
			if(rs.next()){
				System.out.println(rs.getString(1) + " " + rs.getString(2)); 		
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
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
	}
	
	public void selectTest02() throws Exception {
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy2?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			//--------------------------------------------------
			// 여기에 작성한다. 
			
			String sql = "SELECT count(*) FROM member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); 
			if(rs.next()){
				
				System.out.println(rs.getInt(1)); 
			}

			
			//--------------------------------------------------
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
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
	}
	public void selectTest03() throws Exception {
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy2?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			//--------------------------------------------------
			// 여기에 작성한다. 
			String sql = "SELECT id , pw , name FROM member where number=1002 ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); 
			if(rs.next()){
				System.out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3)); 
				
			}
			
			//--------------------------------------------------
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
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
	}
	
	public void selectTest04() throws Exception {
		String id = "hello";
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy2?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			//--------------------------------------------------
			// 여기에 작성한다. 
			
			String sql = "SELECT number , name FROM member where id=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery(); 
			if(rs.next()){
				System.out.println(rs.getString(1) + " " + rs.getString(2)); 
			}
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
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
	}
	
	public void selectTest05() throws Exception {
		String id = "abcd";
		String pw = "1234";
	
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy2?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT number , name FROM member where id=? AND pw=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery(); 
			if(rs.next()){
				
				System.out.println(rs.getString(1) + " " + rs.getString(2)); 
			}
			
			
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
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
	}
	
	public void selectTest06() throws Exception {
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy2?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT * FROM member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); 
			
			while(rs.next()){
				System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4)  ); 				
			}
				
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
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
	}
	public ArrayList<Member> selectTest07() throws Exception {
		
		 ArrayList<Member> memberList = new ArrayList();
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy2?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT * FROM member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Member member = new Member(rs.getInt(1), rs.getString(2), rs.getString(2), rs.getString(4));
				
				memberList.add(member);
				System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4)  ); 
			}
			
			
			if(memberList.size() == 0){
				System.out.println("검색데이터가 없습니다.");
			}
			
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			// [중요] db 사용후엔 반드시 닫아줘야한다. 
			
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
		
		return memberList;
	}
}
