package main.java.kr.mycom.jdbcexam.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.kr.mycom.jdbcexam.DAO.CalendarDAO;
import main.java.kr.mycom.jdbcexam.DAO.DailyDAO;
import main.java.kr.mycom.jdbcexam.VO.CalendarVO;
import main.java.kr.mycom.jdbcexam.VO.DailyVO;


@WebServlet("/Logic")
public class DogServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DogServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("utf-8");
        DailyVO dailyvo = new DailyVO();
        DailyDAO dailydao = new DailyDAO();
        //ArrayList <dailyvo> ist= dailydao.getDaily();


        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        CalendarVO vo = new CalendarVO();

        //String name = request.getParameter("name");
        vo.setName(request.getParameter("name"));
        vo.setDogcount(request.getParameter("dogcount"));
        vo.setUrl("www.naver.com");
        CalendarDAO dao = new CalendarDAO();

        dao.insertCalendar(vo);


        response.sendRedirect("web/dogmanaging.jsp");


    }
};




