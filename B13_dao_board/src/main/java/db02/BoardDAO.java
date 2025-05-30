package db02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class BoardDAO {
	public static BoardDAO instance = new BoardDAO();
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public Connection getConnection() throws Exception {
		String jdbcURL = "jdbc:mysql://localhost:3306/jsp_easy_boardbasic?serverTimezone=UTC&useSSL=false";
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
	
	public ArrayList<Board> getBoardList() throws Exception {
		
		ArrayList<Board> boardList = new ArrayList<Board>();
		
		try{
			
			conn = getConnection();		
			
			String sql = "SELECT * FROM board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Board board = new Board(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
				boardList.add(board);
			}										
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
			
		return boardList;
	}
	
	public boolean addBoardPro(Board board) throws Exception {
		
		boolean check = false;
		
		try{
			
			conn = getConnection();		
			
			String sql = " SELECT MAX(boardNo) FROM board ";
			pstmt = conn.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery();
			if(rs.next()){
				board.setNo(rs.getInt(1) + 1);
			}
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		try{
			
			conn = getConnection();		
			
			String sql = " INSERT INTO board  VALUES( ? , ? , ? , ? , 0);";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, board.getNo());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getSubject());
			pstmt.setString(4, board.getContent());
			
			 int r = pstmt.executeUpdate();
			 if(r != 0) {
				 check = true;
			 }
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		return check;
	}
	
	// addDummyPro
	
	public int addDummyPro( int count) throws Exception {
		
		int no = 0;
		int size = 0;
		
		try{
			
			conn = getConnection();					
			String sql = " SELECT MAX(boardNo) FROM board ";
			pstmt = conn.prepareStatement(sql);		
			rs = pstmt.executeQuery();
			if(rs.next()){
				no = rs.getInt(1) + 1;
			}
						
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		for(int i = 0; i < count; i++){
					
			try{
				
				conn = getConnection();		
				
				String sql = " INSERT INTO board  VALUES( ? , ? , ? , ? , 0);";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, no);
				pstmt.setString(2, "작성자" + no);
				pstmt.setString(3, "제목" + no);
				pstmt.setString(4, "내용" + no);
				
				int result = pstmt.executeUpdate();
				if(result == 1) {
					size += 1;
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				closeDatabase();
			}
			
			no += 1;			
		}
		return size;
		
	}
	// deleteAllBoard
	
	public boolean deleteAllBoardPro() throws Exception {
		boolean check = false;
				
		try{
			conn = getConnection();		
			
			String sql = " DELETE FROM board ";
			pstmt = conn.prepareStatement(sql);
				
			int r = pstmt.executeUpdate();
			System.out.println(r);
			if(r != 0) {
				check = true;
			}
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		return check;
	}
	
	
	public boolean deleteBoardPro(int no) throws Exception {
		
		boolean check = false;
		try{
			conn = getConnection();		
			
			String sql = " DELETE FROM board WHERE boardNo = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			int r = pstmt.executeUpdate();
			if(r != 0) {
				check = true;
			}
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		return check;
	}
	
	public Board getBoardInfo(int no) throws Exception {
		
		Board board = null;
	
		try{
			conn = getConnection();		
			
			String sql = "SELECT * FROM board WHERE boardNo=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			while(rs.next()){
				board = new Board(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5) );
				
			}							
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		if(board != null) {
			// 조회수 증가 
			try{
				
				conn = getConnection();		
				
				String sql = " UPDATE board SET boardReadCount = boardReadCount + 1  WHERE boardNo=? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, no);
				int r = pstmt.executeUpdate();
				
					
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				closeDatabase();
			}
		}
		
		return board;
	}
}
