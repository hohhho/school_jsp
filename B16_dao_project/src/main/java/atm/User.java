package atm;

public class User {
	private String account;
	private String id;
	private String pw;
	private String name;
	private int balance;
	

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
	public void setAccount(String account) {
		this.account = account;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	
}
