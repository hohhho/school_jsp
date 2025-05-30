package board;

public class Board {
	
	private int no;
	private String writer;
	private String subject;
	private String content;
	private int readCount;
	
	public Board() {}
	
	public Board(int no, String writer, String subject, String content, int readCount) {
		this.no = no;
		this.writer = writer;
		this.subject = subject;
		this.content = content;
		this.readCount = readCount;
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
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	
}
