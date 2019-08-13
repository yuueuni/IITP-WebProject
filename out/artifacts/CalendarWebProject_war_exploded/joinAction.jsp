<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ page import="main.java.kr.mycom.jdbcexam.DAO.UserDAO" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="main.java.kr.mycom.jdbcexam.VO.UserVO" %>

<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->

<% request.setCharacterEncoding("UTF-8"); %>



<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->

<jsp:useBean id="userVO" class="main.java.kr.mycom.jdbcexam.VO.UserVO" scope="page" />

<jsp:setProperty name="userVO" property="id" />

<jsp:setProperty name="userVO" property="password" />

<jsp:setProperty name="userVO" property="name" />


<!DOCTYPE html>

<html>

<head>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>DOGUMENT</title>

</head>

<body>

	<%

			//라긴된 회원들은 페이지에 접속 할 수 없도록

			String userID = null;

			if(session.getAttribute("Id") != null ){


				userID = (String) session.getAttribute("Id");

			}

			if(userID != null){

				PrintWriter script = response.getWriter();

				script.println("<script>");

				script.println("alert('이미 로그인 되어있습니다.')");

				script.println("location.href = 'Main.jsp'");

				script.println("</script>");

			}



	

		if (userVO.getId() == null || userVO.getPassword() == null || userVO.getName() == null){
			System.out.println(userVO.getId());
			System.out.println(userVO.getPassword());
			System.out.println(userVO.getName());
				PrintWriter script = response.getWriter();

				script.println("<script>");

				script.println("alert('입력이 안 된 사항이 있습니다.')");

				script.println("history.back()");

				script.println("</script>");

			} else{

				UserDAO userDAO = new UserDAO(); //인스턴스생성

				int result = userDAO.join(userVO);

				

				if(result == -1){ // 아이디가 기본키기. 중복되면 오류.

					PrintWriter script = response.getWriter();

					script.println("<script>");

					script.println("alert('이미 존재하는 아이디 입니다.')");

					script.println("history.back()");

					script.println("</script>");

				}

				//가입성공

				else {

					PrintWriter script = response.getWriter();

					script.println("<script>");

					script.println("location.href = 'Main.jsp'");

					script.println("</script>");

				}

			}

			%>



</body>

</body>

</html>