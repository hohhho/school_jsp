package board;

public class Board { 
	private int no;
	private String title;
	private String contents;
	private String writer;
	private int readCount;
	
	public Board(int no, String title, String contents, String writer, int readCount) {
		this.no = no;
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.readCount = readCount;
	}

	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	
	
	
	
	
	
	
}
