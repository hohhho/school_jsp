package db03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class StudentDAO {
	 public static StudentDAO instance = new StudentDAO();
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;		
	private ResultSet rs = null;
	
	
	
	public ArrayList<Student> selectTest01()  throws Exception {
		ArrayList<Student> studentList = new ArrayList<Student>();
		
	
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy3?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT * FROM student";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Student student = new Student(rs.getInt(1), rs.getInt(2),  rs.getInt(3), rs.getInt(4));
				
				studentList.add(student);
			}
			
			
			if(studentList.size() == 0){
				System.out.println("검색데이터가 없습니다.");
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
		
		return studentList;
	}
	
	public int selectTest02()  throws Exception {
		int total = 0;
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy3?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT sum(kor) FROM student";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				total = rs.getInt(1);
			}			
			else{
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
		return total;
	}
	
	public int selectTest03()  throws Exception {
		int total = 0;
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy3?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT sum(kor) + sum(math) + sum(eng) FROM student";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				total = rs.getInt(1);
			}			
			else{
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
		return total;
	}
	
	public ArrayList<Student> selectTest04()  throws Exception {
		ArrayList<Student> studentList = new ArrayList<Student>();
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy3?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "SELECT *  FROM student WHERE kor > eng";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				Student student = new Student( rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
				studentList.add(student);
			}
			if(studentList.size()== 0){
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
		
		
		return studentList;
	}
	
}
