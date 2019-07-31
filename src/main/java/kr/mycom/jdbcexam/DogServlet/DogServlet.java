package main.java.kr.mycom.jdbcexam.DogServlet;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import main.java.kr.mycom.jdbcexam.DAO.DailyDAO;
import main.java.kr.mycom.jdbcexam.DAO.DogDAO; 
import main.java.kr.mycom.jdbcexam.VO.DailyVO;
import main.java.kr.mycom.jdbcexam.VO.DogVO;



@WebServlet("/Logic")
public class DogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public DogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    	request.setCharacterEncoding("utf-8");
//    	CalendarVO vo = new CalendarVO();   	
//    	
//    	//String name = request.getParameter("name");
//    	vo.setName(request.getParameter("name"));
//    	vo.setDogcount(request.getParameter("dogcount"));    	
//    	vo.setUrl("www.naver.com");
//    	CalendarDAO dao = new CalendarDAO();
//    	
//    	dao.insertCalendar(vo);
//    	
//    	
//    	response.sendRedirect("web/dogmanaging.jsp");
    	
    	request.setCharacterEncoding("utf-8");
    	DailyVO vo = new DailyVO();   	
    	
    	//String name = request.getParameter("name");
    	vo.setWalk(request.getParameter("walk"));
    	vo.setSnack(request.getParameter("snack"));
    	//vo.setFeed(request.getParameter("feed"));
    	vo.setWeight(Integer.parseInt(request.getParameter("weight")));
    	vo.setFeedtime(Integer.parseInt(request.getParameter("feedtime")));
    	DailyDAO dao = new DailyDAO();
    	
    	dao.insertDaily(vo);
    	response.sendRedirect("dogmanaging.jsp");  	
    	
    	
    }
    
    
    
};




