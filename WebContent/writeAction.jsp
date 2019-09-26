<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="main.java.kr.mycom.jdbcexam.DAO.BbsDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="main.java.kr.mycom.jdbcexam.VO.UserVO" %>

<%

	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8"); //set으로쓰는습관들이세오.

%>



<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->

<jsp:useBean id="bbsVO" class="main.java.kr.mycom.jdbcexam.VO.BbsVO" scope="page" />

<!-- // BbsVO bbsVO = new BbsVO(); -->

<jsp:setProperty name="bbsVO" property="title" /><!-- bbsVO.setBbsTitle(requrst) -->

<jsp:setProperty name="bbsVO" property="content" />

<%

	System.out.println(bbsVO);

%>
<%
	UserVO sessionMember = (UserVO) session.getAttribute("member");
	String userId = sessionMember.getId();
%>


<!DOCTYPE html>

<html>

<head>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>DOGUMENT</title>

</head>

<body>

	<%


		if (userId == null) {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('로그인을 하세요.')");

			script.println("location.href = 'signin.jsp'");

			script.println("</script>");

		} else {

			BbsDAO BbsDAO = new BbsDAO();

			String bbsTitle = request.getParameter("bbsTitle");
			String bbsContent = request.getParameter("bbsContent");
			System.out.println("디비로 갈 값들이야"+bbsContent+bbsTitle+userId);
			int result = BbsDAO.write(bbsTitle,userId,bbsContent);

			if (result == -1) {

				PrintWriter script = response.getWriter();

				script.println("<script>");

				script.println("alert('글쓰기에 실패했습니다')");

				script.println("history.back()");

				script.println("</script>");

			} else {

				PrintWriter script = response.getWriter();

				script.println("<script>");

				script.println("location.href='writesuccess.jsp'");

				//script.println("history.back()");

				script.println("</script>");

			}

//
//			if (bbsVO.getTitle() == null || bbsVO.getContent() == null) {
//
//				PrintWriter script = response.getWriter();
//
//				script.println("<script>");
//
//				script.println("alert('입력이 안된 사항이 있습니다')");
//
//				script.println("history.back()");
//
//				script.println("</script>");
//
//			}



		}

	%>

</body>

</html>