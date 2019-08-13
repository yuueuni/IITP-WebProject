package main.java.kr.mycom.jdbcexam.DogServlet;

import main.java.kr.mycom.jdbcexam.DAO.UserDAO;
import main.java.kr.mycom.jdbcexam.VO.UserVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import main.java.kr.mycom.jdbcexam.DAO.UserDAO;
import main.java.kr.mycom.jdbcexam.VO.UserVO;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        System.out.println("fuck i am here");
        UserVO uservo = new UserVO();
        uservo.setId(request.getParameter("signupId"));
        uservo.setName(request.getParameter("signupName"));
        uservo.setPassword(request.getParameter("signupPassword"));

        UserDAO dao = new UserDAO();
        dao.join(uservo);
        boolean isExist = dao.existMember(uservo);
        System.out.println(isExist);

        if (isExist) {
            throw new IllegalArgumentException("이미 가입된 회원입니다.");
        }

        int isSuccess = dao.join(uservo);
        if(isSuccess>0) {
            response.sendRedirect("Main.jsp");
        }
   }
}
