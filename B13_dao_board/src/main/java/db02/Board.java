package db02;

public class Board {

	private int no;
	private String writer;
	private String subject;
	private String content;
	private int readcount;
	
	
	
	public Board(int no, String writer, String subject, String content, int readcount) {
		this.no = no;
		this.writer = writer;
		this.subject = subject;
		this.content = content;
		this.readcount = readcount;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	
	
}
