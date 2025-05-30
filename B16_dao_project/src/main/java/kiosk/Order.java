package kiosk;

public class Order {
	private String name;
	private int price;
	private int count;
	private int total;
	
	
	
	public Order(String name, int price, int count, int total) {
		this.name = name;
		this.price = price;
		this.count = count;
		this.total = total;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
}
