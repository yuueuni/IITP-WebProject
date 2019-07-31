package main.java.kr.mycom.jdbcexam.DAO;
import main.java.kr.mycom.jdbcexam.VO.DogVO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DogDAO {
	public static DogDAO instance = new DogDAO();

	public DogDAO() {
	}

	public static DogDAO getInstace() {
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
	}// getConnection

	public void insertDog(DogVO vo) {

		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			// Column
			// PK , name , email , password
			String sql = "INSERT INTO dog(name,weight,birth_day,breed,remarks,photo,location) VALUES (?,?,?,?,?,?,?);";
			// String sql = "INSERT INTO daily VALUES (5,now(),'aaa',?,?,?,?);";
			pstmt = conn.prepareStatement(sql);

			// pstmt.setInt(1,vo.getId());

			pstmt.setString(1, vo.getName());
			pstmt.setInt(2, vo.getWeight());
			pstmt.setInt(3, vo.getAge());
			pstmt.setString(4, vo.getBreed());
			pstmt.setString(5, vo.getRemarks());
			pstmt.setString(6, vo.getPhoto());
			pstmt.setString(7, vo.getLocation());
			
			pstmt.executeUpdate();
			
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

	}
	
	 public List<DogVO> getDog() throws SQLException, ClassNotFoundException {

     	List<DogVO> list = null;
	        //DailyVO daily = null;
	        Connection conn = null;
	        PreparedStatement ps = null;
	        ResultSet rs = null;

	        try {
	            conn = getConnection();
	            String sql = "SELECT name,weight,birth_day,breed,remarks,photo,location FROM dog ";
	            ps = conn.prepareStatement(sql);
	            rs = ps.executeQuery();

	            if (rs.next()) {
	                list = new ArrayList<>();
	                do {
	                    //반복문이 수행될 때 마다 daily생성
	                    
	                	DogVO dogvo = new DogVO();
	                	dogvo.setName(rs.getString("name"));
	                    
	                	
	                	
	                	
	                	
	                	
	                	
	                	
	                	

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
