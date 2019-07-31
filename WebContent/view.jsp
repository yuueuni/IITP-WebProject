<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter"%>

<%@ page import="main.java.bbs.Bbs"%>

<%@ page import="main.java.bbs.BbsDAO"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>DOGUMENT</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
   content="Play-Offs Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">      
    addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--bootstrap-->
<link href="web_page/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<!--coustom css-->
<link href="web_page/css/style.css" rel="stylesheet" type="text/css" />
<!--script-->
<script   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="web_page/js/jquery-2.1.4.min.js"></script>
<script src="web_page/js/bootstrap.min.js"></script>
<script type="text/javascript" src="web_page/js/move-top.js"></script>
<script type="text/javascript" src="web_page/js/easing.js"></script>
<!--fonts-->
<link   href='http://fonts.googleapis.com/css?family=Quicksand:300,400,700'   rel='stylesheet' type='text/css'>
<link   href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'   rel='stylesheet' type='text/css'>
<!--script-->
<script type="text/javascript">
   jQuery(document).ready(function($) {
      $(".scroll").click(function(event) {
         event.preventDefault();
         $('html,body').animate({
            scrollTop : $(this.hash).offset().top
         }, 900);
      });
   });
</script>
</head>

<body>

   <%

      //로긴한사람이라면    userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값

      String userID = null;

      if (session.getAttribute("userID") != null) {

         userID = (String) session.getAttribute("userID");

   

      }

      int bbsID = 0;

         /*if (request.getParameter("bbsID") != null) {
   
            bbsID = Integer.parseInt(request.getParameter("bbsID"));
   
         }*/

      if (bbsID == 0) {

         /*PrintWriter script = response.getWriter();

         script.println("<script>");

         script.println("alert('유효하지 않은 글 입니다.')");

         script.println("location.href = 'bbs.jsp'");

         script.println("</script>");*/

         Bbs bbs = new BbsDAO().getBbs(bbsID);
      }


   %>





   <!-- 네비게이션  -->
<div class="banner-background" id="to-top">
      <div class="container">
         <div class="nav-back">
            <div class="navigation">
               <nav class="navbar navbar-default">
                  <div>
                     <div style="display: flex; justify-content: space-around;">
                        <div class="logo">
                           <h1>
                              <a href="Main.jsp">Dog<span class="hlf">ument</span></a>
                           </h1>
                        </div>
                        <div class="mainmenu">
                           <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                              <ul class="nav navbar-nav">
                                 <li><a href="Main.jsp">메인</a></li>
                                 <li><a href="about.jsp">소개</a></li>
                                 <li><a href="dogmanaging.jsp">강아지매니징</a></li>
                                 <li><a href="dogdictionary.jsp">애견사전</a></li>
                                 <li><a class="active" href="bbs.jsp">커뮤니티<span class="sr-only">(current)</span></a></li>
                              </ul>
                           </div>
                        </div>
                        <div class="login">
                           <button class="label label-primary" onclick="location='signin.jsp'" style="margin-top:.5em; padding-bottom:0em;"><h4>Sign in / Sign up</h4></button>
                        </div>
                     </div>
                  </div>
               </nav>
               <div class="clearfix"></div>
            </div>
         </div>
      </div>
   </div>

      <!-- 게시판 -->
<div class="about-pg">
<h3>커뮤니티</h3>

   <div class="container">

      <div class="row">

            <table class="table table-striped"

               style="text-align: center; border: 1px solid #dddddd">

               <thead>

                  <tr>

                     <th colspan="3"

                        style="background-color: #eeeeee; text-align: center;">글 보기 </th>

                  </tr>

               </thead>

               <tbody>

                  <tr>

                     <td style="width: 20%; border-right: 1px solid #d4d0d0;"> 글 제목 </td>

                     <td colspan="2">test</td>

                  </tr>

                  <tr>

                     <td style="border-right: 1px solid #d4d0d0;" >작성자</td>   

                     <td colspan="2">유저</td>

                  </tr>

                  <tr>

                     <td style="border-right: 1px solid #d4d0d0;">작성일</td>   

                     <td colspan="2">2019-07-31</td>
                     

                  </tr>

                  <tr>

                     <td style="border-right: 1px solid #d4d0d0;">내용</td>   

                     <td colspan="2" style="min-height: 200px; text-align: left; padding:16px !important;">
                     테스트글
                     </td>

                  </tr>

                  

               </tbody>

            </table>   

            <a href = "bbs.jsp" class="btn btn-danger">목록</a>

            


      </div>

   </div>
</div>

<!--footer-->
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