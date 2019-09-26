package main.java.kr.mycom.jdbcexam.DogServlet;

import main.java.kr.mycom.jdbcexam.DAO.BbsDAO;
import main.java.kr.mycom.jdbcexam.VO.BbsVO;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BbsServlet")
public class BbsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        BbsVO vo = new BbsVO();


        String bbsTitle = request.getParameter("bbsTitle");
        String bbsContent = request.getParameter("bbsContent");

        BbsDAO dao = new BbsDAO();

        response.setContentType("text/html");
        String userId = (String) request.getAttribute("userId");
        System.out.println("여기는 서블릿입니다."+userId);
        //dao.write(bbsTitle,userId,bbsContent);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
