package main.java.kr.mycom.jdbcexam.DogServlet;

import main.java.kr.mycom.jdbcexam.DAO.UserDAO;
import main.java.kr.mycom.jdbcexam.VO.UserVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        System.out.println(" 로그인 드루와드루와");


        UserDAO dao = new UserDAO();

        int result = dao.login(request.getParameter("Id"), request.getParameter("Password"));

        if (result == 1) {
            UserVO user = dao.getMember(request.getParameter("Id"), request.getParameter("Password"));
            RequestDispatcher rd = request.getRequestDispatcher("Main.jsp");
            request.setAttribute("member", user);
            rd.forward(request, response);
        } else if (result == 0) {
            //로그인 실패
            //redirect는
            response.sendRedirect("../FailLogin.jsp");
        } else if (result == -1) {
            //아이디 없음
            response.sendRedirect("../FailLogin.jsp");
        } else if (result == -2) {
            //DB오류
            response.sendRedirect("../FailLogin.jsp");
        }

    }
}
