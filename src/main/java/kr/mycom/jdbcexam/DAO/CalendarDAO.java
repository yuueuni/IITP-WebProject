package main.java.kr.mycom.jdbcexam.DAO;

import java.sql.*;

import main.java.kr.mycom.jdbcexam.VO.CalendarVO;

public class CalendarDAO {
    private static String dburl = "jdbc:mysql://localhost:3306/calendar";
    private static String dbUser = "calendaruser";
    private static String dbpasswd = "1234";


    private Connection getConnection() throws SQLException {
        Connection conn = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);

        } catch (ClassNotFoundException e) {
            System.out.println(" 드라이버 로딩 실패 ");
        }

        return conn;
    }


    public CalendarVO getCalendar() {
        CalendarVO calendar = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            String sql = "SELECT * FROM calendar ";
            ps = conn.prepareStatement(sql);
            //ps.setInt(1, roleId);
            rs = ps.executeQuery();

            if (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int dogcount = rs.getInt("dogcount");
                Timestamp datetime = rs.getTimestamp("datetime");
                Timestamp datetime_end = rs.getTimestamp("datetime_end");
                //String datetime = rs.getString("datetime");
                //String datetime_end = rs.getString("datetime_end");

                String status = rs.getString("status");
                String url = rs.getString("url");
                calendar = new CalendarVO(id, name, dogcount, url, datetime, datetime_end, status);

            }
        } catch (Exception e) {
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

        return calendar;
    }


    public void insertCalendar(CalendarVO vo) {

            boolean result = false;
            Connection conn = null;
            PreparedStatement pstmt = null;

            try {
                conn = getConnection();

                // Column
                // PK , name , email , password
                String sql = "INSERT INTO calendar VALUES (?,?,?,now(),now(),?);";
                pstmt = conn.prepareStatement(sql);

                pstmt.setString(1, vo.getName());
                pstmt.setInt(2, vo.getDougcount());
                pstmt.setString(3, vo.getUrl());
                pstmt.setString(4, vo.getStatus());


                int count = pstmt.executeUpdate();

                result = (count == 1);
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) {
                        conn.close();
                    }
                    if (pstmt != null) {
                        pstmt.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

        };

    }



