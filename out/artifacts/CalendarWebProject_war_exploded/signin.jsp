<%@ page import="main.java.kr.mycom.jdbcexam.DAO.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="main.java.kr.mycom.jdbcexam.VO.UserVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<!DOCTYPE html >
<html>
<head>
<title>DOGUMENT</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="keywords" content="Play-Offs Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
      <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
      <meta charset utf="8">
      <!--bootstrap-->
      <link href="web_page/css/bootstrap.min.css" rel="stylesheet" type="text/css">
      <!--coustom css-->
      <link href="web_page/css/style.css" rel="stylesheet" type="text/css"/>
      <!--script-->
      <script src="web_page/js/jquery-2.1.4.min.js"></script>
      <script src="web_page/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="web_page/js/move-top.js"></script>
      <script type="text/javascript" src="web_page/js/easing.js"></script>
      <!--fonts-->
      <link href='http://fonts.googleapis.com/css?family=Quicksand:300,400,700' rel='stylesheet' type='text/css'>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet" type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700;" rel="stylesheet" type='text/css'>
      <!--script-->
      <script type="text/javascript">
         jQuery(document).ready(function($) {
            $(".scroll").click(function(event){      
               event.preventDefault();
               $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
            });
         });
        </script>
        <style>
     
        .container_2 .half {
            float: none;
            height: 100%;

            width:25em;
        }
        .container_2 h1 {
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 23px;
            text-align: center;
            text-indent: 6px;
            letter-spacing: 7px;
            text-transform: uppercase;
            color: #263238;
        }
        body .container_2 .tabs {
            width: 100%;
            margin-bottom: 29px;
            border-bottom: 1px solid #d9d9d9;
        }
        body .container_2 .tabs .tab {
            display: inline-block;
            margin-bottom: -1px;
            padding: 20px 15px 10px;
            cursor: pointer;
            letter-spacing: 0;
            border-bottom: 1px solid #d9d9d9;
            -moz-userVO-select: -moz-none;
            -ms-userVO-select: none;
            -webkit-userVO-select: none;
            userVO-select: none;
            transition: all 0.1s ease-in-out;
        }
        body .container_2 .tabs .tab a {
            font-size: 11px;
            text-decoration: none;
            text-transform: uppercase;
            color: #d9d9d9;
            transition: all 0.1s ease-in-out;
        }
        body .container_2 .tabs .tab.active a, body .container_2 .tabs .tab:hover a {
        color: #263238;
        }
        body .container_2 .tabs .tab.active {
        border-bottom: 1px solid #263238;
        }
        body .container_2 .content form {
        position: relative;
        height: 287px;
        }
        body .contcontainer_2ainer .content label:first-of-type, body .container_2 .content input:first-of-type, body .container_2 .content .more:first-of-type {
        -moz-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
        -webkit-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
        animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
        }
        body .container_2 .content label:nth-of-type(2), body .container_2 .content input:nth-of-type(2), body .container_2 .content .more:nth-of-type(2) {
        -moz-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
        -webkit-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
        animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
        }
        body .container_2 .content label:nth-of-type(3), body .container_2 .content input:nth-of-type(3), body .container_2 .content .more:nth-of-type(3) {
        -moz-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
        -webkit-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
        animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
        }
        body .container_2 .content label {
        font-size: 12px;
        color: #263238;
        -moz-userVO-select: -moz-none;
        -ms-userVO-select: none;
        -webkit-userVO-select: none;
        userVO-select: none;
        }
        body .container_2 .content label:not([for='remember']) {
        display: none;
        }
        body .container_2 .content input.inpt {
        font-size: 14px;
        display: block;
        width: 100%;
        height: 42px;
        margin-bottom: 12px;
        padding: 16px 13px;
        color: #999999;
        border: 1px solid #d9d9d9;
        background: transparent;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        }
        body .container_2 .content input.inpt::-webkit-input-placeholder {
        font-size: 14px;
        color: #999999;
        font-family: 'Lato', sans-serif;
        }
        body .container_2 .content input.inpt:-moz-placeholder {
        font-size: 14px;
        color: #999999;
        font-family: 'Lato', sans-serif;
        }
        body .container_2 .content input.inpt::-moz-placeholder {
        font-size: 14px;
        color: #999999;
        font-family: 'Lato', sans-serif;
        }
        body .container_2 .content input.inpt:-ms-input-placeholder {
        font-size: 14px;
        color: #999999;
        font-family: 'Lato', sans-serif;
        }
        body .container_2 .content input.inpt:focus {
        border-color: #999999;
        }
        body .container_2 .content input.submit {
        font-size: 12px;
        line-height: 42px;
        display: block;
        width: 100%;
        height: 42px;
        cursor: pointer;
        vertical-align: middle;
        letter-spacing: 2px;
        text-transform: uppercase;
        color: #263238;
        border: 1px solid #263238;
        background: transparent;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        }
        body .container_2 .content input.submit:hover {
        background-color: #263238;
        color: #ffffff;
        -moz-transition: all 0.2s;
        -o-transition: all 0.2s;
        -webkit-transition: all 0.2s;
        transition: all 0.2s;
        }
        body .container_2 .content input:focus {
        outline: none;
        }
        body .container_2 .content .checkbox {
        margin-top: 4px;
        overflow: hidden;
        clip: rect(0 0 0 0);
        width: 0;
        height: 0;
        margin: 17px -1px;
        padding: 0;
        border: 0;
        }
        body .container_2 .content .checkbox + label {
        vertical-align: middle;
        display: inline-block;
        width: 50%;
        }
        body .container_2 .content .checkbox + label:before {
        content: "\A";
        color: #999999;
        font-family: Verdana;
        font-weight: bold;
        font-size: 8px;
        line-height: 10px;
        text-align: center;
        display: inline-block;
        vertical-align: middle;
        position: relative;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        background: transparent;
        border: 1px solid #d9d9d9;
        width: 11px;
        height: 11px;
        margin: -2px 8px 0 0;
        }
        body .container_2 .content .checkbox:checked + label:before {
        content: "✓";
        }
        body .container_2 .content .submit-wrap {
        position: relative;
        bottom: 0;
        width: 100%;
        margin-bottom: 30px;
        }
        body .container_2 .content .submit-wrap a {
        font-size: 12px;
        display: block;
        margin-top: 20px;
        text-align: center;
        text-decoration: none;
        color: #999999;
        }
        body .container_2 .content .submit-wrap a:hover {
        text-decoration: underline;
        }
        body .container_2 .content .signup-cont {
        display: none;
        }

        </style>
</head>
   <body>

   <%
//       String id = request.getParameter("")
//       int result = (int)request.getAttribute("result");
//       System.out.println(result);

   %>

      <!--header-part-->
      <div class="banner-background" id="to-top">
      <div class="container">
         <div class="nav-back">
            <div class="navigation">
               <nav class="navbar navbar-default">
                  <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle collapsed"
                        data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1"
                        aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span> <span
                           class="icon-bar"></span> <span class="icon-bar"></span> <span
                           class="icon-bar"></span>
                     </button>
                  </div>
                  <!-- Collect the nav links, forms, and other content for toggling -->
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
                                 <li><a href="bbs.jsp">커뮤니티</a></li>
                              </ul>
                           </div>
                        </div>
                         <span>
                                <button class="label label-primary" onclick="location='signin.jsp'" style="margin-top:.5em; padding-bottom:0em;"><h5>Sign in</h5></button>
                            </span>

                         <span>
                                <button class="label label-primary" onclick="location='signup.jsp'" style="margin-top:.5em; margin-left:10px; padding-bottom:0em;"><h5>Sign up</h5></button>
                            </span>
                     </div>
                  </div>
               </nav>
               <div class="clearfix"></div>
            </div>
         </div>
      </div>
   </div>
      <!--header-->
      <!--about-->
      <div class="about-pg">
            <h3 style="margin-bottom:30px;">로그인</h3>
         <section style="position:relative; display:flex; justify-content:center;" class="container_2">
            <article class="half">
                   <!-- <div class="tabs">
                        <span class="tab signin active"><a href="#signin">Sign in</a></span>
                        <span class="tab signup"><a href="#signup">Sign up</a></span>
                    </div>-->
                    <div class="content">
                        <div class="signin-cont cont">
                            <form action="/LoginServlet" method="GET" enctype="multipart/form-data">

                                <div class="input-group"style="margin-bottom:15px;">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input id="Id" type="text" class="form-control" name="Id" placeholder="Id">
                                </div>


                                <div class="input-group"style="margin-bottom:15px;">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input id="password" type="password" class="form-control" name="Password" placeholder="Password">
                                </div>



                                <!--
                                <div class="form-group">
                                   <h4>ID:</h4><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="text" name="Id"  required="required" placeholder="Your Id">
                                </div>

                                <div class="form-group">
                                    <h4>PW:</h4>
                                <input type="password" name="Password"  required="required" placeholder="Your password">
                                </div>-->
                                <div class="submit-wrap" style="margin-bottom:15px;">
                                    <input type="submit" value="Sign in" class="submit">
                                    <a href="#" class="more">Forgot your password?</a>
                                </div>
                            </form>
                        </div>
               </div>
              </article>
          </section>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
            <script type="text/javascript">
            $('.tabs .tab').click(function(){
            if ($(this).hasClass('signin')) {
                $('.tabs .tab').removeClass('active');
                $(this).addClass('active');
                $('.cont').hide();
                $('.signin-cont').show();
            } 
            if ($(this).hasClass('signup')) {
                $('.tabs .tab').removeClass('active');
                $(this).addClass('active');
                $('.cont').hide();
                $('.signup-cont').show();
            }
            });
            $('.container .bg').mousemove(function(e){
                var amountMovedX = (e.pageX * -1 / 30);
                var amountMovedY = (e.pageY * -1 / 9);
                $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
            });
            </script>
        </div>
        <br>
      <!--about-->
      <!--footer-->
      <div class="footer">
         <div class="container">
         <div class="col-md-3 mrg1">
            <div class="logo">
               <h1><a href="index.html">Dog<span class="hlf">ument</span></a></h1>
            </div>
            <div class="clearfix"></div>
         </div>
         <div class="col-md-3 mrg1">
            <br>
            <div style="color:gray; padding-top:8px;">
               <h5><a href="#">개인정보취급방침</a><a href="#"> 이용약관</a></h5>
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
               <p>Pet Kennel &#169 2015 Design by <a href="http://www.w3layouts.com" target="_blank">w3layouts</a></p>
            </div>
         </div>
         <div class="clearfix"></div>
         </div>
      </div>
      <!--footer-->
      <!---->
      <script type="text/javascript">

      });
      </script>
      <a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
      <!--login logic-->
   <%

       UserDAO userDAO = new UserDAO();
       //인스턴스생성
       UserVO user = new UserVO();

       int result = userDAO.login(user.getId(), user.getPassword());



       //로그인 성공

       if(result == 1){

           PrintWriter script = response.getWriter();

           script.println("<script>");

           script.println("<location.href = 'main.jsp'");

           script.println("</script>");

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