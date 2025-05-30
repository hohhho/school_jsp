package db03;

public class Student {
	
	private int number;
	private int kor;
	private int math;
	private int eng;
	
	
	
	public Student(int number, int kor, int math, int eng) {
		this.number = number;
		this.kor = kor;
		this.math = math;
		this.eng = eng;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	
}
