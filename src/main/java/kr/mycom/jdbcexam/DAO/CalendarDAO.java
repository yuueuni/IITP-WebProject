package main.java.kr.mycom.jdbcexam.DAO;

import java.sql.*;

import main.java.kr.mycom.jdbcexam.VO.CalendarVO;

public class CalendarDAO {
    private static String dburl = "jdbc:mysql://localhost:3306/dogument?" + "useUnicode=true&characterEncoding=utf8";
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
    }


    public CalendarVO getCalendar() throws SQLException, ClassNotFoundException {
    	
        CalendarVO calendar = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
        	conn = getConnection();
            String sql = "SELECT * FROM calendar ";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            if (rs.next()) {
            	Integer id = rs.getInt("id");
                String name = rs.getString("name");
                String dogcount = rs.getString("dogcount");
                Timestamp datetime = rs.getTimestamp("datetime");
                Timestamp datetime_end = rs.getTimestamp("datetime_end");
                String status = rs.getString("status");
                String url = rs.getString("url");
           
                //calendar = new CalendarVO(id, name, dogcount, url, datetime, datetime_end, status);
                calendar.setDogcount(dogcount);
                System.out.println(calendar);
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
                String sql = "INSERT INTO calendar(name,dogcount,url,datetime,datetime_end,status) VALUES (?,?,?,now(),now(),'123');";
                pstmt = conn.prepareStatement(sql);

                //pstmt.setInt(1,vo.getId());
               	pstmt.setString(1,vo.getName());
                pstmt.setString(2, vo.getDogcount());
                pstmt.setString(3, vo.getUrl());


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



