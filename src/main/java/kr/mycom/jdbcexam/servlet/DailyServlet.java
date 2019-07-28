package main.java.kr.mycom.jdbcexam.servlet;

import main.java.kr.mycom.jdbcexam.DAO.DailyDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/Daily")
public class DailyServlet extends HttpServlet {

    public DailyServlet() {
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
        req.setCharacterEncoding("utf-8");
        DailyDAO dao = new DailyDAO();

    }
}
