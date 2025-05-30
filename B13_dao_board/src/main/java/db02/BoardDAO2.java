package db02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO2 {
	
	// static 객체 instance 생성
	public static BoardDAO2 instance = new BoardDAO2();
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	// db 연결 메서드
	public Connection getConnection() throws Exception{
		String jdbcURL = "jdbc:mysql://localhost:3306/dao_board?serverTimezone=UTC&useSSL=false";
		String dbId = "root";
		String dbPw = "root";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcURL, dbId, dbPw);
		
		return conn;
	}
	
	// db 연결 해제 메서드
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
	
	// getBoardList 메서드
	public ArrayList<Board> getBoardList() throws Exception{
		
		ArrayList<Board> boardList = new ArrayList<>();
		
		try {
			conn = getConnection();
			
			String sql = " SELECT * FROM board_table ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board temp = new Board(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
				boardList.add(temp);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return boardList;
	}
	
	
	// addBoardPro 메서드
	public boolean addBoardPro(Board board) throws Exception{
		
		int number = 0;
		boolean check = false;
		
		// no 가져오기
		try {
			conn = getConnection();
			
			String sql = " SELECT MAX(no) FROM board_table ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				number = rs.getInt(1) + 1;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		
		// board 값 DB에 저장
		try {
			conn = getConnection();
			
			String sql = " INSERT INTO board_table(no, writer, subject, content) VALUES(?, ?, ?, ?) ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getSubject());
			pstmt.setString(4, board.getContent());
			
			int updateCount = pstmt.executeUpdate();
			if(updateCount == 1) {
				check = true;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return check;
	}
	
	
	// addDummyPro 메서드
	public int addDummyPro(int count) throws Exception{
		
		int no = 0;
		int size = 0;
		
		// no 가져오기
		try {
			conn = getConnection();
			
			String sql = " SELECT MAX(no) FROM board_table ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				no = rs.getInt(1) + 1;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		
		// count만큼 DB에 더미 추가
		for(int i=no; i<no+count; i++) {
			
			try {
				conn = getConnection();
				
				String sql = " INSERT INTO board_table(no, writer, subject, content) VALUES(?, ?, ?, ?) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, i);
				pstmt.setString(2, "작성자"+i);
				pstmt.setString(3, "제목"+i);
				pstmt.setString(4, "내용"+i);
				
				int updateCount = pstmt.executeUpdate();	
				if(updateCount == 1) {
					size++;
				}

			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				closeDatabase();
			}
		
		}
		return size;
	}
	
	// deleteAllBoardPro 메서드
	public boolean deleteAllBoardPro() throws Exception{
		boolean check = false;
		
		try {
			conn = getConnection();
			
			String sql = " DELETE FROM board_table ";
			pstmt = conn.prepareStatement(sql);
			
			int deleteCount = pstmt.executeUpdate();
			if(deleteCount > 0) {
				check = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return check;
	}
	// deleteBoardPro 메서드
	
	// getBoardInfo 메서드
}
