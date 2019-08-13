package main.java.kr.mycom.jdbcexam.DAO;

import main.java.kr.mycom.jdbcexam.VO.UserVO;

import java.sql.*;

public class UserDAO {

    private Connection conn; // connection:db�������ϰ� ���ִ� ��ü
    private PreparedStatement pstmt;
    private ResultSet rs;

    public UserDAO() { // ������ ����ɶ����� �ڵ����� db������ �̷�� �� �� �ֵ�����
        try {
            String dbURL = "jdbc:mysql://localhost:3306/dogument?useUnicode=true&characterEncoding=UTF-8"; // localhost:3306 ��Ʈ�� ��ǻ�ͼ�ġ�� mysql�ּ�
            String dbID = "root";
            String dbPassword = "1234";

            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

        } catch (Exception e) {
            e.printStackTrace(); // ������ �������� ���
        }
    }

    public int login(String id, String password) {
        String SQL = "SELECT password FROM member WHERE id = ?";

        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {

                if (rs.getString(1).equals(password)) {
                    return 1; // ��� ����
                } else
                    return 0; // ��й�ȣ ����ġ
            }
            return -1; // ���̵� ���� ����

        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2; // �����ͺ��̽� ������ �ǹ�
    }

    public int join(UserVO userVO) {

        String SQL = "INSERT INTO member VALUES (?,?,?)";

        try {

            pstmt = conn.prepareStatement(SQL);

            pstmt.setString(1, userVO.getId());
            pstmt.setString(2, userVO.getPassword());
            pstmt.setString(3, userVO.getName());

            int result = pstmt.executeUpdate();
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
        String sql = "SELECT count(*) FROM MEMBER " +
                "WHERE id = " + vo.getId();
        try {

            pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            int result = rs.getInt(0);
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