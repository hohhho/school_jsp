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

	public Member findMemberPro(int number) throws Exception {
		Member member = null;

		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_crud?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);

			String sql = " SELECT *  FROM member WHERE member_number=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				member = new Member(rs.getInt(1), rs.getString(2));
			}

			else {
				System.out.println("검색데이터가 없습니다.");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (conn != null) {
				conn.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (rs != null) {
				rs.close();
			}
		}
		return member;

	}

	public boolean addMemberPro(Member member) throws Exception {
		boolean check = false;
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_crud?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);

			String sql = "INSERT member VALUES(? , ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, member.getNumber());
			pstmt.setString(2, member.getName());

			int result = pstmt.executeUpdate();
			if (result == 1) {
				check = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (conn != null) {
				conn.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (rs != null) {
				rs.close();
			}
		}
		return check;
	}

	public boolean updateMemberPro(Member member) throws Exception {

		boolean check = false;
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_crud?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);

			String sql = " UPDATE member SET member_name=? WHERE member_number=? ";
			pstmt = conn.prepareStatement(sql);
			// 순서를 잘생각해야한다.
			pstmt.setString(1, member.getName());
			pstmt.setInt(2, member.getNumber());

			int result = pstmt.executeUpdate();
			if (result == 1) {
				check = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (conn != null) {
				conn.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (rs != null) {
				rs.close();
			}
		}
		return check;
	}

	public boolean deleteMemberPro(int number) throws Exception {

		boolean check = false;
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_crud?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);

			String sql = "DELETE FROM member WHERE member_number=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);

			int result = pstmt.executeUpdate();
			if (result == 1) {
				check = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (conn != null) {
				conn.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (rs != null) {
				rs.close();
			}
		}
		return check;
	}

	public Member radioMemberPro(int number) throws Exception {
		Member member = null;

		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_crud?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);

			String sql = "SELECT *  FROM member WHERE member_number=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				member = new Member(rs.getInt(1), rs.getString(2));
			}

			else {
				System.out.println("검색데이터가 없습니다.");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (conn != null) {
				conn.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (rs != null) {
				rs.close();
			}
		}
		return member;
	}

	public Member selectMemberPro(int number) throws Exception {
		Member member = null;

		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/jsp_easy_crud?serverTimezone=UTC&useSSL=false";
			String dbId = "root";
			String dbPw = "root";

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);

			String sql = "SELECT *  FROM member WHERE member_number=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				member = new Member(rs.getInt(1), rs.getString(2));
			}

			else {
				System.out.println("검색데이터가 없습니다.");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (conn != null) {
				conn.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (rs != null) {
				rs.close();
			}
		}
		return member;
	}
}
