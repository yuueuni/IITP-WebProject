<%@ page import="javax.security.auth.callback.ConfirmationCallback"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"		pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="main.java.kr.mycom.jdbcexam.VO.BbsVO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="main.java.kr.mycom.jdbcexam.VO.UserVO" %>
<%@ page import="main.java.kr.mycom.jdbcexam.DAO.BbsDAO" %>
<jsp:include page="header.jsp" flush="true"></jsp:include>

	   <body>

      <%

         //로긴한사람이라면    userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
         String userID = null;
          UserVO sessionMember = (UserVO) session.getAttribute("member");
          if (sessionMember != null) {
              userID =  sessionMember.getId();
          }

         int pageNumber = 1; //기본 페이지 넘버
         //페이지넘버값이 있을때

         if (request.getParameter("pageNumber") != null) {

            pageNumber = Integer.parseInt(request.getParameter("pageNumber"));

         }

      %>


      <!-- 게시판 -->
<div class="about-pg">
<h3>커뮤니티</h3>
      <div class="container">

         <div class="row">

            <%

               //if logined userID라는 변수에 해당 아이디가 담기고 if not null

               if (userID != null) {

            %>

            <a href="write.jsp" class="btn btn-danger pull-right">글쓰기</a>

            <%

               } else {

            %>

            <button class="btn btn-danger pull-right"   onclick="if(confirm('비회원입니다. 로그인하세요.'))location.href='signin.jsp';" type="button">글쓰기</button>

            <%
               }
            %>

            <br>
            <br>
            <table class="table table-striped"   style="text-align: center; border: 1px solid #dddddd">

               <thead>
                  <tr>
                     <th style="background-color: #eeeeee; text-align: center;">번호</th>
                     <th style="background-color: #eeeeee; text-align: center;">제목</th>
                     <th style="background-color: #eeeeee; text-align: center;">작성자</th>
                     <th style="background-color: #eeeeee; text-align: center;">작성일</th>
                  </tr>
               </thead>

               <tbody>

                  <%

                     BbsDAO bbsDAO = new BbsDAO();
                     ArrayList<BbsVO> list = bbsDAO.getList(pageNumber);
                     for (int i = 0; i < list.size(); i++) {
                  %>

                  <tr>
                      <td><%=list.get(i).getBoard_index()%></td>
                      <td><a href="view.jsp?board_index=<%=list.get(i).getBoard_index()%>"><%=list.get(i).getTitle()%></a></td>
                      <td><%=list.get(i).getId()%></td>
                      <td><%=list.get(i).getReg_date()%></td>

                  </tr>
                  <%

                     }

                  %>

               </tbody>

            </table>

            <!-- 페이지 넘기기 -->

            <%

               if (pageNumber != 1) {

            %>

            <a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>"

               class="btn btn-success btn-arrow-left">이전</a></td>

            <%

               }

               if (bbsDAO.nextPage(pageNumber)) {

            %>

            <a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>"

               class="btn btn-success btn-arrow-left">다음</a>

            <%

               }

            %>


         </div>

      </div>

</div>
      <div class="footer">

          <div class="container">
              <div class="col-md-3 mrg1">
                  <div class="logo">
                      <h1>
                          <a href="index.html">Dog<span class="hlf">ument</span></a>
                      </h1>
                  </div>
                  <div class="clearfix"></div>
              </div>
              <div class="col-md-3 mrg1">
                  <br>
                  <div style="color: gray; padding-top: 8px;">
                      <h5>
                          <a href="#">개인정보취급방침</a><a href="#"> 이용약관</a>
                      </h5>
                  </div>
              </div>
              <div class="col-md-3 brk5">
                  <div class="follow-us">
                      <h4>FOLLOW US</h4>
                      <ul>
                          <li><a href="#" class="fb"></a></li>
                          <li><a href="#" class="twt"></a></li>
                          <li><a href="#" class="gpls"></a></li>
                          <li><a href="#" class="pint"></a></li>
                          <li><a href="#" class="lnkdin"></a></li>
                      </ul>
                  </div>
              </div>
              <div class="col-md-3 brk5">
                  <div class="copy-rt">
                      <h4>COPYRIGHT</h4>
                      <p>
                          Pet Kennel &#169 2015 Design by <a href="http://www.w3layouts.com"
                                                             target="_blank">w3layouts</a>
                      </p>
                  </div>
              </div>
              <div class="clearfix"></div>
          </div>
      </div>
      <!--footer-->


	</body>

	</html>