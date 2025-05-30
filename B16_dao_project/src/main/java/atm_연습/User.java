package atm_연습;

public class User {
	private String account;
	private String id;
	private String pw;
	private String name;
	private int balance;
	
	public static User instance = new User();
	
	public User() {};
	public User(String account, String id, String pw, String name, int balance) {
		this.account = account;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.balance = balance;
	}
	
	public String getAccount() {
		return account;
	}
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public String getName() {
		return name;
	}
	public int getBalance() {
		return balance;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	
	

}
