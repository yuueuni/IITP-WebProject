package main.java.kr.mycom.jdbcexam.DogServlet;

import main.java.kr.mycom.jdbcexam.DAO.UserDAO;
import main.java.kr.mycom.jdbcexam.VO.UserVO;
import sun.misc.Request;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//
//        System.out.println(" 로그인 드루와드루와");
//
//        UserVO uservo = new UserVO();
//        UserDAO dao = new UserDAO();
//
//        int result = dao.login(uservo.getId(),uservo.getPassword());
//        System.out.println(result);
//        request.setAttribute("result",result);
//
//        ServletContext context = getServletContext();
//        RequestDispatcher dispatcher = context.getRequestDispatcher("../signin.jsp");
//        dispatcher.forward(request,response);
    }





    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        UserVO uservo = new UserVO();

        String signupId = request.getParameter("signupId");
        String signupName = request.getParameter("signupName");
        String signupPassword = request.getParameter("signupPassword");

        uservo.setId(signupId);
        uservo.setName(signupName);
        uservo.setPassword(signupPassword);


        //입력값 없을때
        if(signupId == null || signupName == null || signupPassword == null){
            request.getSession().setAttribute("messageType","오류 메세지");
            request.getSession().setAttribute("messageContent","모든 내용을 입력해주세요");
            response.sendRedirect("../signup.jsp");
        }

        UserDAO dao = new UserDAO();

        boolean isExist = dao.existMember(uservo);
        System.out.println(isExist);

        if (isExist) {
            response.sendRedirect("../FailJoin.jsp");
            throw new IllegalArgumentException("이미 가입된 회원입니다.");
        }else{
            System.out.println("틀렸따면 여기왔어");
            int isSuccess = dao.join(uservo);
            if(isSuccess>0) {
                System.out.println(isSuccess+"여기댜댜댜댜댜");
                response.sendRedirect("../JoinSuccess.jsp");
            }

        }

        }
}
