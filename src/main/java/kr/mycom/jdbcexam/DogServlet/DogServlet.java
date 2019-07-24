package main.java.kr.mycom.jdbcexam.DogServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.kr.mycom.jdbcexam.DAO.CalendarDAO;
import main.java.kr.mycom.jdbcexam.VO.CalendarVO;



@WebServlet("/Logic")
public class DogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public DogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    	doGet(request,response);
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
    	
    	//Making JSON
    	
    	
    	
    	response.sendRedirect("web/dogmanaging.jsp");
    	
    	
    }
};




