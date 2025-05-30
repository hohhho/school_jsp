package atmMember;

public class ATM_member {
	private String account;
	private String id;
	private String pw;
	private String name;
	private int balance;
	
	// 생성자
	public ATM_member() {};
	public ATM_member(String account, String id, String pw, String name, int balance) {
		this.account = account;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.balance = balance;
	}
	
	// getter
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
	
	// setter
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
