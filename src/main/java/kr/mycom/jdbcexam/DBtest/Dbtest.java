package main.java.kr.mycom.jdbcexam.DBtest;

import main.java.kr.mycom.jdbcexam.DAO.CalendarDAO;
import main.java.kr.mycom.jdbcexam.VO.CalendarVO;

public class Dbtest {
    public static void main(String[] args) {
        CalendarDAO calendarDAO = new CalendarDAO();
        CalendarVO calendar = calendarDAO.getCalendar();
        System.out.println(calendar);
    }
}
