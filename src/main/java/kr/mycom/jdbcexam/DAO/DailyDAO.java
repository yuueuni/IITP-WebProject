package main.java.kr.mycom.jdbcexam.DAO;

import main.java.kr.mycom.jdbcexam.VO.DailyVO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DailyDAO {
    private static String dburl = "jdbc:mysql://localhost:3306/daily?" + "useUnicode=true&characterEncoding=utf8";
    private static String dbUser = "root";
    private static String dbpasswd = "1234";

    private Connection getConnection() throws SQLException {
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
            System.out.println("연결성공");
        } catch (ClassNotFoundException e) {
            System.out.println(" �뱶�씪�씠踰� 濡쒕뵫 �떎�뙣 ");
        }

        return conn;
    }//getConnection


    public List<DailyVO> getDaily() throws SQLException, ClassNotFoundException {

        List<DailyVO> list = null;
        //DailyVO daily = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = getConnection();
            String sql = "SELECT date,weight FROM daily ";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            if (rs.next()) {
                list = new ArrayList<>();
                do {
                    //반복문이 수행될 때 마다 daily생성
                    DailyVO dailyvo = new DailyVO();

                    dailyvo.setDate(rs.getDate("date"));
                    dailyvo.setDog_num(rs.getString("dog_num"));
                    dailyvo.setWeight(rs.getInt("weight"));
                    dailyvo.setSnack(rs.getString("snack"));
                    dailyvo.setFeed(rs.getString("feed"));
                    dailyvo.setWalk(rs.getString("walk"));
                    dailyvo.setFaces_condition(rs.getString("faces_condition"));

                    list.add(dailyvo);

                    }while(rs.next());
            }
        }
         catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return list;

    }

}//getDaily

