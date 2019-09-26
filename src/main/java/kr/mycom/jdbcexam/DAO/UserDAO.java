package main.java.kr.mycom.jdbcexam.DAO;

import main.java.kr.mycom.jdbcexam.VO.UserVO;

import java.sql.*;

public class UserDAO {

    private static String dburl = "jdbc:mysql://localhost:3306/dogument?" + "useUnicode=true&characterEncoding=utf8";
    private static String dbUser = "root";
    private static String dbpasswd = "1234";

    private Connection getConnection() throws SQLException {
        Connection conn = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
            System.out.println("연결성공");
        } catch (ClassNotFoundException e) {
            System.out.println("연결실패");
        }

        return conn;
    }// getConnection

    public int login(String id, String password) {

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = getConnection();
            String SQL = "SELECT password FROM member WHERE id = ?";
            pstmt = conn.prepareStatement(SQL);
            System.out.println("id 여깄다고!!" + id);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                if (rs.getString(1).equals(password)) {
                    System.out.println(rs.getString(1));
                    return 1; // 로그인 성공
                } else
                    return 0; // 비밀번호 불일치
            }
            return -1; // 아이디가 없음

        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2; // 데이터베이스 오류

    }

    public UserVO getMember(String id, String password) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        System.out.println("id값 들어왔니?" + id);

        UserVO userVO = new UserVO();

        try {
            conn = getConnection();
            String SQL = "SELECT * FROM member WHERE id = ? and password=?";
            pstmt = conn.prepareStatement(SQL);

            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                userVO.setId(rs.getString("id"));
                userVO.setPassword(rs.getString("Password"));
                userVO.setName(rs.getString("name"));
            }

            return userVO;
        } catch (Exception e) {
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

        return null;
    }

    public int join(UserVO userVO) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        String SQL = "INSERT INTO member VALUES (?,?,?)";

        try {
            conn = getConnection();
            pstmt = conn.prepareStatement(SQL);

            pstmt.setString(1, userVO.getId());
            pstmt.setString(2, userVO.getPassword());
            pstmt.setString(3, userVO.getName());

            int result = pstmt.executeUpdate();
            System.out.println(result);
            return result;

        } catch (Exception e) {

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

        return -1; // DB 오류

    }

    public boolean existMember(UserVO vo) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "SELECT count(*) FROM MEMBER " +
                "WHERE id = " + vo.getId();
        try {

            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();


            int result = rs.getInt(0);
            System.out.println(result);

            if (result > 0) {
                return true;
            }

        } catch (Exception e) {
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
        return false;
    }
}