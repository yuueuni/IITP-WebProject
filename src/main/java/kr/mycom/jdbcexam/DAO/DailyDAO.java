package main.java.kr.mycom.jdbcexam.DAO;

import main.java.kr.mycom.jdbcexam.VO.DailyVO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DailyDAO {
	
	public static DailyDAO instance = new DailyDAO();
	public DailyDAO() {}
	public static DailyDAO getInstace() {
		return instance;
	}
	
	
	
	 private static String dburl = "jdbc:mysql://localhost:3306/dogument?" + "useUnicode=true&characterEncoding=utf8";
	    private static String dbUser = "root";
	    private static String dbpasswd = "user";

	    private Connection getConnection() throws SQLException {
	        Connection conn = null;

	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
	            System.out.println("연결성공");
	        } catch (ClassNotFoundException e) {
	            System.out.println("연결실패");
	        }

	        return conn;
	    }//getConnection


	    
	    
	    public void insertDaily(DailyVO vo) {

            boolean result = false;
            Connection conn = null;
            PreparedStatement pstmt = null;

            try {
                conn = getConnection();

                // Column
                // PK , name , email , password
                String sql = "INSERT INTO daily(date,dog_num,weight,snack,feed,walk,feedtime) VALUES (now(),'댕댕',?,?,?,?,?);";
                //String sql = "INSERT INTO daily VALUES (5,now(),'aaa',?,?,?,?);";
                pstmt = conn.prepareStatement(sql);

                //pstmt.setInt(1,vo.getId());
                pstmt.setInt(1,vo.getWeight());
                pstmt.setString(2,vo.getSnack());
                pstmt.setString(3,vo.getFeed());
                pstmt.setString(4,vo.getWalk());
                pstmt.setInt(5,vo.getFeedtime());    


                int count = pstmt.executeUpdate();
                System.out.println(count);
                
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
        
        public List<DailyVO> getDaily() throws SQLException, ClassNotFoundException {

        	List<DailyVO> list = null;
	        //DailyVO daily = null;
	        Connection conn = null;
	        PreparedStatement ps = null;
	        ResultSet rs = null;

	        try {
	            conn = getConnection();
	            String sql = "SELECT date,dog_num,weight,snack,feed,walk,faces_condition,feedtime FROM daily ";
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
	                   // dailyvo.setFeed(rs.getString("feed"));
	                    dailyvo.setWalk(rs.getString("walk"));
	                    dailyvo.setFaces_condition(rs.getString("faces_condition"));
	                    dailyvo.setFeedtime(rs.getInt("feedtime"));
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

}
