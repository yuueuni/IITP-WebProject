package main.java.kr.mycom.jdbcexam.DBtest;

import main.java.kr.mycom.jdbcexam.DAO.CalendarDAO;
import main.java.kr.mycom.jdbcexam.VO.CalendarVO;

import java.sql.SQLException;

public class Dbtest {
    public static void main(String[] args) {
        CalendarDAO calendarDAO = new CalendarDAO();

        CalendarVO calendar = null;
        try {
            calendar = calendarDAO.getCalendar();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println(calendar);
    }
}
