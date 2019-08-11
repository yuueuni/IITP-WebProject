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

    //회원가입
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        UserVO uservo = new UserVO();
        uservo.setId(request.getParameter("Id"));
        uservo.setName(request.getParameter("Name"));
        uservo.setPassword(request.getParameter("Password"));

        UserDAO dao = new UserDAO();
        boolean isExist = dao.existMember(uservo);

        if (isExist) {
            throw new IllegalArgumentException("이미 가입된 회원입니다.");
        }

        boolean isSuccess = dao.join(uservo);
        if(isSuccess) {
            response.sendRedirect("signin.jsp");
        }

    }


    //로그인
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
