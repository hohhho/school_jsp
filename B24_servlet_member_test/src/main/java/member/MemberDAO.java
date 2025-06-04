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
	
	public boolean memberJoinPro(Member member) throws Exception{
		
		boolean noExist = false;
		boolean success = false;
		
		try {
			
			conn = getConnection();
			
			String sql = " SELECT COUNT(*) FROM member WHERE memberId=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getInt(1) == 0) {
					noExist = true;
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		// db에 id 중복값이 없다면 db에 저장
		if(noExist) {
			try {
				
				conn = getConnection();
				
				String sql = " INSERT INTO member VALUES(?,?,?,?) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, member.getId());
				pstmt.setString(2, member.getPw());
				pstmt.setString(3, member.getName());
				pstmt.setString(4, member.getGender());
				
				int result = pstmt.executeUpdate();
				
				if(result > 0) {
					success = true;
				}
				
				
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				closeDatabase();
			}
		}
		
		return success;
	}
	
	public int memberLoginPro(String id, String pw) throws Exception{
		int state = -1; // 1성공, 2아이디 오류, 3비밀번호 오류
		boolean idExist = false;
		boolean pwCorrect = false;
		
		// 아이디 확인
		try {
			
			conn = getConnection();
			
			String sql = " SELECT COUNT(*) FROM member WHERE memberId=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next() && rs.getInt(1) == 1) {
				idExist = true;
			}else {
				state = 2;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		
		// 비밀번호 확인
		if(idExist) {
			try {
				
				conn = getConnection();
				
				String sql = " SELECT memberPw FROM member WHERE memberId=? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					System.out.println(rs.getString(1)); 
					if(rs.getString(1).equals(pw)) {
						pwCorrect = true;						
					}else {
						state = 3;
					}
				}else {
					state = 3;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				closeDatabase();
			}
			
		}
		
		// 아이디와 패스워드 둘 다 맞으면 로그인 성공
		if(idExist && pwCorrect) {
			state = 1;
		}
		
		return state;
		
	}
	
	public Member getMember(String id) throws Exception{
		Member member = null;
		
		try {
			conn = getConnection();
			
			String sql = " SELECT * FROM member WHERE memberId=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String gender = rs.getString(4);
				
				member = new Member(id,pw,name,gender);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDatabase();
		}
		
		return member;
	}
	
	public boolean memberUpdate(Member member) throws Exception{
		boolean success = false;
		
		try {
			conn = getConnection();
			
			String sql = " UPDATE member SET memberPw=?, memberName=?, memberGender=? WHERE memberId=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getPw());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getGender());
			pstmt.setString(4, member.getId());
			
			int updateCount = pstmt.executeUpdate();
			System.out.println(updateCount); // log
			
			if(updateCount > 0) {
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
