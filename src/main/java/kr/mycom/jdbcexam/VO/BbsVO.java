package main.java.kr.mycom.jdbcexam.VO;

import java.util.Date;

public class BbsVO {

	private int board_index;
	private String id;
	private String title;
	private String content;
	private Date reg_date;
	private int bbsAvailable;

	public int getBoard_index() {
		return board_index;
	}

	public void setBoard_index(int board_index) {
		this.board_index = board_index;
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

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public int getBbsAvailable() {
		return bbsAvailable;
	}

	public void setBbsAvailable(int bbsAvailable) {
		this.bbsAvailable = bbsAvailable;
	}

	public BbsVO(int board_index, String id, String title, String content, Date reg_date, int bbsAvailable) {
		this.board_index = board_index;
		this.id = id;
		this.title = title;
		this.content = content;
		this.reg_date = reg_date;
		this.bbsAvailable = bbsAvailable;
	}

	public BbsVO() {
	}
}
