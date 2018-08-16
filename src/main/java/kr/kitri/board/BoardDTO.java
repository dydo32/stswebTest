package kr.kitri.board;

import java.sql.Date;

public class BoardDTO {
	String board_no;
	String id;
	String title;
	String content;
	Date write_date;
	String category;
	
	public BoardDTO(){
		
	}

	public BoardDTO(String board_no, String id, String title, String content, Date write_date, String category) {
		super();
		this.board_no = board_no;
		this.id = id;
		this.title = title;
		this.content = content;
		this.write_date = write_date;
		this.category = category;
	}

	public String getBoard_no() {
		return board_no;
	}

	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "BoardDTO [board_no=" + board_no + ", id=" + id + ", title=" + title + ", content=" + content
				+ ", write_date=" + write_date + ", category=" + category + "]";
	}
	
	
}
