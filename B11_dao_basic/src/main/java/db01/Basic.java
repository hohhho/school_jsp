package db01;

public class Basic {
	private int a;
	private double b;
	private String c;
	
	// 생성자
	public Basic(int a, double b, String c) {
		
		this.a = a;
		this.b = b;
		this.c = c;
	}
	
	// getter, setter
	public int getA() {
		return a;
	}
	public void setA(int a) {
		this.a = a;
	}
	public double getB() {
		return b;
	}
	public void setB(double b) {
		this.b = b;
	}
	public String getC() {
		return c;
	}
	public void setC(String c) {
		this.c = c;
	}
	
}
