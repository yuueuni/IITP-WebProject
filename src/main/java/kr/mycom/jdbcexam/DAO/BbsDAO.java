package main.java.kr.mycom.jdbcexam.DAO;
import main.java.kr.mycom.jdbcexam.VO.BbsVO;

import java.sql.*;
import java.util.ArrayList;

public class BbsDAO {

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




    //현재시간 가져오는 함수

		public String getDate() {
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

			String SQL = "SELECT NOW()";

			try {
                conn = getConnection();
				pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return rs.getString(1);
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
			return "";
		}



		//bbsID 게시글 번호 가져오기

			public int getNext() {
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;

				String SQL = "SELECT board_Index FROM board ORDER BY board_Index DESC";

				try {
                    conn = getConnection();
					pstmt = conn.prepareStatement(SQL);
					rs = pstmt.executeQuery();

					if(rs.next()) {
						return rs.getInt(1) + 1;
					}

					return 1;//첫번째 게시물

				} catch (Exception e) {

					e.printStackTrace();

				}

				return -1; //db오류

			}


            //글작성함수

			public int write(String bbsTitle, String userID, String bbsContent) {

                Connection conn = null;
                PreparedStatement pstmt = null;


				String SQL = "INSERT INTO board VALUES(?,?,?,?,?,?)";

				try {
                    conn = getConnection();
					pstmt = conn.prepareStatement(SQL);

					pstmt.setInt(1, getNext());
					pstmt.setString(2, userID);
					pstmt.setString(3, bbsTitle);
					pstmt.setString(4, bbsContent);
					pstmt.setString(5, getDate());
					pstmt.setInt(6,1);

					return pstmt.executeUpdate();

				} catch (Exception e) {

					e.printStackTrace();

				}

				return -1; //�����ͺ��̽� ����
			}




			public ArrayList<BbsVO> getList(int pageNumber){
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;

				String SQL = "SELECT * FROM board WHERE board_index < ? and bbsAvailable = 1 ORDER BY board_index DESC LIMIT 10";

				ArrayList<BbsVO> list = new ArrayList<BbsVO>();

				try {
                    conn = getConnection();

                    pstmt = conn.prepareStatement(SQL);

					pstmt.setInt(1, getNext() - (pageNumber -1) * 10);

					rs = pstmt.executeQuery();

					while (rs.next()) {

						BbsVO bbs = new BbsVO();
						bbs.setBoard_index(rs.getInt("board_index"));
						bbs.setId(rs.getString("id"));
						bbs.setTitle(rs.getString("title"));
                        bbs.setContent(rs.getString("content"));
						bbs.setReg_date(rs.getDate("reg_date"));
                        bbs.setBbsAvailable(rs.getInt("bbsAvailable"));

						list.add(bbs);

					}

				} catch (Exception e) {
					e.printStackTrace();
				}

				return list;

			}



			public boolean nextPage (int pageNumber) {
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				String SQL = "SELECT * FROM board WHERE board_index < ? and bbsAvailable = 1 ORDER BY id DESC LIMIT 10";

				ArrayList<BbsVO> list = new ArrayList<BbsVO>();

				try {
					conn = getConnection();

					pstmt = conn.prepareStatement(SQL);

					pstmt.setInt(1, getNext() - (pageNumber -1) * 10);

					rs = pstmt.executeQuery();

					if (rs.next()) {
						return true;
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				return false;
			}


			public BbsVO getBbs(int bbsID) {
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				String SQL = "SELECT * FROM board WHERE board_index = ?";

				try {
					conn = getConnection();
					pstmt = conn.prepareStatement(SQL);

					pstmt.setInt(1, bbsID);

					rs = pstmt.executeQuery();

					if (rs.next()) {

						BbsVO bbs = new BbsVO();


						bbs.setBoard_index(rs.getInt(bbsID));
						bbs.setId(rs.getString("id"));
						bbs.setTitle(rs.getString("title"));
						bbs.setContent(rs.getString("content"));
						bbs.setReg_date(rs.getDate("reg_date"));
						bbs.setBbsAvailable(rs.getInt("bbsAvailable"));

						return bbs;

					}

				} catch (Exception e) {

					e.printStackTrace();

				}

				return null;



			}



			//���� �Լ�

			public int update(int bbsID, String bbsTitle, String bbsContent) {
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

					String SQL = "UPDATE board SET title = ?, content = ?, WHERE id = ?";

					try {
						conn = getConnection();
						pstmt = conn.prepareStatement(SQL);

						pstmt.setString(1, bbsTitle);

						pstmt.setString(2, bbsContent);

						pstmt.setInt(3, bbsID);

						return pstmt.executeUpdate();



					} catch (Exception e) {

						e.printStackTrace();

					}

					return -1; // �����ͺ��̽� ����

				}


			//���� �Լ�

			public int delete(int bbsID) {
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				String SQL = "UPDATE board SET bbsAvailable = 0 WHERE bbsID = ?";

				try {
					conn = getConnection();
					pstmt = conn.prepareStatement(SQL);

					pstmt.setInt(1, bbsID);

					return pstmt.executeUpdate();



				} catch (Exception e) {

					e.printStackTrace();

				}

				return -1; // �����ͺ��̽� ����

			}

			};


