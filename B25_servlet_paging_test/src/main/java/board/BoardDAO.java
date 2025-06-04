package board;

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
	
	
	// DB 연결 메서드
	public Connection getConnection() throws Exception{
		String jdbcURL = "jdbc:mysql://localhost:3306/jsp_easy_boardbasic?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcURL, dbId, dbPw);
		
		return conn;
	}
	
	// DB 연결 해제 메서드
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
	
	public ArrayList<Board> getBoardList() throws Exception{
		ArrayList<Board> boardList = new ArrayList<>();
		
		try {
			
			conn = getConnection();
			
			String sql = " SELECT * FROM board ";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board board = new Board(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
				
				boardList.add(board);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return boardList;
	}
	
	public int addDummyPro() throws Exception{
		int successCount = 0;
		
		int no = 0;
		int size = 10;
		
		try {
			
			conn = getConnection();
			
			String sql = " SELECT MAX(boardNo) FROM board ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				no = rs.getInt(1)+1;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		
		for(int i=0; i<size; i++) {
			try {
				
				conn = getConnection();
				
				String sql = " INSERT INTO board VALUES(?,?,?,?,0) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, no);
				pstmt.setString(2, "작성자"+no);
				pstmt.setString(3, "제목"+no);
				pstmt.setString(4, "내용"+no);
				
				int result = pstmt.executeUpdate();
				
				if(result == 1) {
					successCount += 1;
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				closeDatabase();
			}
			
			no += 1;
		}
		
		return successCount;
	}
	
	
	public boolean deleteAllPro() throws Exception{
		int boardSize = 0;
		int deleteCount = 0;
		boolean success = false;
		
		// 삭제 전 db에 있는 게시글 개수 가져오기
		try {
			conn = getConnection();
			
			String sql = " SELECT count(*) FROM board ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				boardSize = rs.getInt(1);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		// 데이터 삭제
		try {
			conn = getConnection();
			
			String sql = " DELETE FROM board ";
			pstmt = conn.prepareStatement(sql);
			deleteCount = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		// 비교
		if(boardSize == deleteCount) {
			success = true;
		}
		
		return success;
	}
	
	public boolean addBoardPro(Board board) throws Exception{
		boolean success = false;

		try {
			
			conn = getConnection();
			
			String sql = " INSERT INTO board VALUES(?,?,?,?,0) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board.getNo());
			pstmt.setString(2,board.getWriter());
			pstmt.setString(3, board.getTitle());
			pstmt.setString(4, board.getContents());
			
			int result = pstmt.executeUpdate();
			if(result == 1) {
				success = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return success;
	}
	
	public int getNextNo() throws Exception{
		int no = 0;
		
		try {
			
			conn = getConnection();
			
			String sql = " SELECT MAX(boardNo) FROM board ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				no = rs.getInt(1)+1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return no;
	}
	
	public boolean deleteOnePro(int targetNo) throws Exception{
		boolean success = false;
		
		try {
			
			conn = getConnection();
			
			String sql = " DELETE FROM board WHERE boardNo=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, targetNo);
			int result = pstmt.executeUpdate();
			
			if(result == 1) {
				success = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return success;
	}

}
