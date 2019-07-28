package main.java.kr.mycom.jdbcexam.VO;

import java.util.Date;

public class DailyVO {
   private int reg_index;
   private Date date;
   private String dog_num;
   private int weight;
   private int snack;
   private int feed;
   private int walk;
   private String faces_condition;

    public DailyVO() {
        this.reg_index = reg_index;
        this.date = date;
        this.dog_num = dog_num;
        this.weight = weight;
        this.snack = snack;
        this.feed = feed;
        this.walk = walk;
        this.faces_condition = faces_condition;
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

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getSnack() {
        return snack;
    }

    public void setSnack(String snack) {
        this.snack = snack;
    }

    public int getFeed() {
        return feed;
    }

    public void setFeed(String feed) {
        this.feed = feed;
    }

    public int getWalk() {
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
}
