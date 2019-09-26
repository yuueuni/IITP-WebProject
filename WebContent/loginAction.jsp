<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<%@ page import="main.java.kr.mycom.jdbcexam.DAO.UserDAO" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<% request.setCharacterEncoding("UTF-8"); %>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="userVO" class="main.java.kr.mycom.jdbcexam.VO.UserVO" scope="page" />
<jsp:setProperty name="userVO" property="id" />
<jsp:setProperty name="userVO" property="password" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>DOGUMENT</title>

</head>

<body>

	<%
		//사용자 입력값
		String id = request.getParameter("Id");
		String pw = request.getParameter("Password");
		System.out.println("나 여깄다 씨바!!!"+id);

		UserDAO userDAO = new UserDAO(); //인스턴스생성


		//int result = userDAO.login(userVO.getId(), userVO.getPassword());
		int result = userDAO.login(id,pw);
		System.out.println(result);

		

		//로그인 성공

		if(result == 1){

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("location.href = 'Main.jsp'");

			script.println("</script>");
			session.setAttribute("Id",userVO.getId());

		}

		//로그인 실패

		else if(result == 0){

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('비밀번호가 틀립니다.')");

			script.println("history.back()");

			script.println("</script>");

		}

		//아이디 없음

		else if(result == -1){

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('존재하지 않는 아이디 입니다.')");

		script.println("history.back()");

		script.println("</script>");

		}

		//DB오류

		else if(result == -2){

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('DB오류가 발생했습니다.')");

		script.println("history.back()");
		script.println("</script>");
		}		

	%>


</body>

</html>