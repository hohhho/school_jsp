package atm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;

public class UserDAO {
	public static UserDAO instance = new UserDAO();
	
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
	
	public ArrayList<User> getAtmList()throws Exception{
		ArrayList<User> atmList = new ArrayList<User>();
		
		

		try{
			
			conn = getConnection();
			String sql = "SELECT * FROM atm_user";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
			while(rs.next()){
				User user = new User(rs.getString(1), rs.getString(2), 
						rs.getString(3), rs.getString(4), rs.getInt(5));
				
			
				atmList.add(user);
			}		
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		
		
		return atmList;
	}
	
	public int atmJoinPro(User user)throws Exception{
		
		int check = 0;
	
		// 임시로 만든 가짜계좌 
		Random ran = new Random();
		String randomAccount = "";
		int r = ran.nextInt(1000) + 100;
		randomAccount += r;	
		randomAccount += "-";
		r = ran.nextInt(1000) + 100;
		randomAccount += r;	
		
		user.setAccount(randomAccount);
		
		try{
			
			conn = getConnection();
			String sql = "SELECT COUNT(*) FROM atm_user WHERE atm_user_id=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
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
				String sql = " INSERT INTO atm_user  VALUES(? , ? , ? , ? , ?) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user.getAccount());
				pstmt.setString(2, user.getId());
				pstmt.setString(3, user.getPw());
				pstmt.setString(4, user.getName());
				pstmt.setInt(5, 0);
				pstmt.executeUpdate();
				
						
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				closeDatabase();
			}
		}
		return check;
		
	}
	
	public int atmLoginPro(String id, String pw)throws Exception{
		int check = 0;
	
		try{
			conn = getConnection();
			
			String sql = " SELECT COUNT(*) FROM atm_user WHERE atm_user_id=? and atm_user_pw=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			while(rs.next()){
				if(rs.getInt(1) > 0){
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
	
	public User atmBalance(String log)throws Exception{
		
		User user = null;
		
	
		try{
			conn = getConnection();
			
			String sql = "SELECT * FROM atm_user WHERE atm_user_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, log);
			rs = pstmt.executeQuery();
			while(rs.next()){
				user = new User(rs.getString(1), rs.getString(2), rs.getString(3)
						, rs.getString(4), rs.getInt(5));
				
					
			}							
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		return user;
		
	}
	
	
	public int atmDepositPro(int deposit, String log)throws Exception{
	
		int check = 0;
		try{
			
			conn = getConnection();
			
			String sql = " UPDATE atm_user SET atm_user_balance = atm_user_balance + ?  WHERE atm_user_id = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, deposit);
			pstmt.setString(2, log);
		
			 check = pstmt.executeUpdate();
			
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		return check;
	}
	
	public int atmWithdrawPro(int withdraw, String log)throws Exception{
		
		
		
		User user = null;
		try{
			
			conn = getConnection();
			String sql = "SELECT * FROM atm_user WHERE atm_user_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, log);
			rs = pstmt.executeQuery();
			while(rs.next()){
				user = new User(rs.getString(1), rs.getString(2), rs.getString(3) , 
						rs.getString(4) , rs.getInt(5));			
			}							
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		
		int state = 0; // [1입금성공] [2잔액부족] [3음수]
				
		int balance = user.getBalance() - withdraw;
				
		if(withdraw < 0){
			state = 3;
		}else if(balance >= 0){
			user.setBalance(balance);
			state = 1; // 입금성공				
			
			try{
				
				conn = getConnection();
				// Set 은 , 로 연결한다. 
				String sql = " UPDATE atm_user SET atm_user_balance = ?  WHERE atm_user_id = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, user.getBalance());
				pstmt.setString(2, log);
			
				int result = pstmt.executeUpdate();
				
						
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				closeDatabase();
			}
	
		}else{
			state = 2; // 잔액부족		
		}
		
		return state;
		
	}
	
	public int atmTransferPro(String log, int transfer, String accountTransfer)throws Exception{

		
		User user = null;
		User user2 = null;
		try{
			conn = getConnection();
			
			String sql = "SELECT * FROM atm_user WHERE atm_user_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, log);
			rs = pstmt.executeQuery();
			while(rs.next()){
				user = new User(rs.getString(1), rs.getString(2), rs.getString(3), 
						rs.getString(4) , rs.getInt(5));		
			}							
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		
		
		int check2 = 0;
		
		try{
			conn = getConnection();
			
			String sql = "SELECT * FROM atm_user WHERE atm_user_account=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, accountTransfer);
			rs = pstmt.executeQuery();
			while(rs.next()){
				
				check2 = 1;
			}							
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			closeDatabase();
		}
		

		int state = 0; // [1송금성공] [2상대계좌틀림] [3음수] [4잔액부족]
		
		int balance = user.getBalance() - transfer;
		
		if(check2 == 0){
			state = 2;	// 계좌번호 틀림 
		}else if(transfer < 0){
			state = 3; // 음수
		}else if(balance >= 0){
			
			state = 1; // 송금성공				
			
			
			try{
				conn = getConnection();
				
				// Set 은 , 로 연결한다. 
				String sql = " UPDATE atm_user SET atm_user_balance = atm_user_balance - ?  WHERE atm_user_id = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, transfer);
				pstmt.setString(2, log);
			
				int result = pstmt.executeUpdate();
				
						
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				closeDatabase();
			}
	
			
			try{
				conn = getConnection();
				
				// Set 은 , 로 연결한다. 
				String sql = " UPDATE atm_user SET atm_user_balance = atm_user_balance + ?  WHERE atm_user_account = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, transfer);
				pstmt.setString(2, accountTransfer);
			
				int result = pstmt.executeUpdate();
		//		System.out.println(accountTransfer);
				
						
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				closeDatabase();
			}
	
			
			
		}else{
			state = 4; // 잔액부족
		}
		return state;
	}
	
	
}
