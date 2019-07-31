package member.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;


import member.model.Member;


public class MemberDao {
	private static String dburl = "jdbc:mysql://localhost:3306/dogument?" + "useUnicode=true&characterEncoding=utf8";
    private static String dbUser = "root";
    private static String dbpasswd = "user";

    private Connection getConnection() throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
            System.out.println("연결성공");
        } catch (ClassNotFoundException e) {
            System.out.println(" �뱶�씪�씠踰� 濡쒕뵫 �떎�뙣 ");
        }

        return conn;
    }

	public Member selectById(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select * from member where memberid = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			Member member = null;
			
			
			//member테이블에 동일한 아이디있으면 새로운 멤버 객체 생성
			if (rs.next()) {
				member = new Member(
						rs.getString("Id"), 
						rs.getString("Name"), 
						rs.getString("password"),
						toDate(rs.getTimestamp("regdate")));
			}
			return member;
			
		} finally {
			if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
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
	}

	private Date toDate(Timestamp date) {
		return date == null ? null : new Date(date.getTime());
	}

	//멤버테이블에 새로운 멤버데이터 추가
	public void insert(Connection conn, Member mem) throws SQLException {
		try (PreparedStatement pstmt = 
				conn.prepareStatement("insert into member values(?,?,?,?)")) {
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getName());
			pstmt.setString(3, mem.getPassword());
			pstmt.setTimestamp(4, new Timestamp(mem.getRegDate().getTime()));
			pstmt.executeUpdate();
		}
	}

	//회원 정보수정
	public void update(Connection conn, Member member) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement(
				"update member set name = ?, password = ? where memberid = ?")) {
			pstmt.setString(1, member.getName());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getId());
			pstmt.executeUpdate();
		}
	}
}
