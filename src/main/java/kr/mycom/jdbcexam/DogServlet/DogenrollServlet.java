package main.java.kr.mycom.jdbcexam.DogServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.kr.mycom.jdbcexam.DAO.DogDAO;
import main.java.kr.mycom.jdbcexam.VO.DogVO;


@WebServlet("/DogenrollServlet")
public class DogenrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DogenrollServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
    	DogVO dogvo = new DogVO();   	
    	
    	//String name = request.getParameter("name");
    	
    	System.out.println(request.getParameter("dogname"));
    	//System.out.println(request.getParameter("dogname")+Integer.parseInt(request.getParameter("weight")));
		dogvo.setDog_num("temp");
    	dogvo.setWeight(Integer.parseInt(request.getParameter("weight")));
    	dogvo.setName(request.getParameter("dogname"));
    	dogvo.setAge(Integer.parseInt(request.getParameter("age")));
    	dogvo.setBreed(request.getParameter("breed"));
    	dogvo.setRemarks(request.getParameter("remarks"));
    	dogvo.setLocation(request.getParameter("location"));	
    	dogvo.setPhoto("temp");
    	
    	DogDAO dao = new DogDAO();
    	
    	dao.insertDog(dogvo);
    	
    	System.out.println(dogvo.toString());
    	response.sendRedirect("Enrollsucess.jsp");   
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
