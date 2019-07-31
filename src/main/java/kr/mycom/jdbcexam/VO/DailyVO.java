package main.java.kr.mycom.jdbcexam.VO;

import java.util.Date;

public class DailyVO {
	private int reg_index;
	private Date date;
	private String dog_num;
	private Integer weight;
	private String snack;
	private String feed;
	private String walk;
	private String faces_condition;
	private Integer feedtime;

	public DailyVO() {

	}

	public int getReg_index() {
		return reg_index;
	}

	public void setReg_index(int reg_index) {
		this.reg_index = reg_index;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDog_num() {
		return dog_num;
	}

	public void setDog_num(String dog_num) {
		this.dog_num = dog_num;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public String getSnack() {
		return snack;
	}

	public void setSnack(String snack) {
		this.snack = snack;
	}

	public String getFeed() {
		return feed;
	}

	public void setFeed(String feed) {
		this.feed = feed;
	}

	public String getWalk() {
		return walk;
	}

	public void setWalk(String walk) {
		this.walk = walk;
	}

	public String getFaces_condition() {
		return faces_condition;
	}

	public void setFaces_condition(String faces_condition) {
		this.faces_condition = faces_condition;
	}

	public Integer getFeedtime() {
		return feedtime;
	}

	public void setFeedtime(Integer feedtime) {
		this.feedtime = feedtime;
	}

	@Override
	public String toString() {
		return "DailyVO [reg_index=" + reg_index + ", date=" + date + ", dog_num=" + dog_num + ", weight=" + weight
				+ ", snack=" + snack + ", feed=" + feed + ", walk=" + walk + ", faces_condition=" + faces_condition
				+ ", feedtime=" + feedtime + "]";
	}

	public DailyVO(int reg_index, Date date, String dog_num, Integer weight, String snack, String feed, String walk,
			String faces_condition, Integer feedtime) {
		super();
		this.reg_index = reg_index;
		this.date = date;
		this.dog_num = dog_num;
		this.weight = weight;
		this.snack = snack;
		this.feed = feed;
		this.walk = walk;
		this.faces_condition = faces_condition;
		this.feedtime = feedtime;
	}

	
	
	

	

}
