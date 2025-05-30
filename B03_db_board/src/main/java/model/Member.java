package model;

public class Member {
	private int num;
	private String title;
	private String writer;
	private int lookCount;
	private String contents;
	
	// 생성자
	public Member(){};
	public Member(int num, String title, String writer, int lookCount, String contents){
		this.num = num;
		this.title = title;
		this.writer = writer;
		this.lookCount = lookCount;
		this.contents = contents;
	}
	
	// setter
	public void setNum(int num){
		this.num = num;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public void setWriter(String writer){
		this.writer = writer;
	}
	public void setLookCount(int lookCount){
		this.lookCount = lookCount;
	}
	public void setContents(String contents){
		this.contents = contents;
	}
	
	// getter
	public int getNum(){
		return this.num;
	}
	public String getTitle(){
		return this.title;
	}
	public String getWriter(){
		return this.writer;
	}
	public int getLookCount(){
		return this.lookCount;
	}
	public String getContents(){
		return this.contents;
	}
}