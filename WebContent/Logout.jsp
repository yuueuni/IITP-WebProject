<%@ page import="main.java.kr.mycom.jdbcexam.VO.UserVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    UserVO userVO = (UserVO) request.getAttribute("member");
    if (userVO != null) {
        session.setAttribute("member", userVO);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DOGUMENT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords"
          content="Play-Offs Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>


    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!--bootstrap-->
    <link href="web_page/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--coustom css-->
    <link href="web_page/css/style.css" rel="stylesheet" type="text/css"/>
    <!--script-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="web_page/js/jquery-2.1.4.min.js"></script>
    <script src="web_page/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="web_page/js/move-top.js"></script>
    <script type="text/javascript" src="web_page/js/easing.js"></script>
    <!--fonts-->
    <link href='http://fonts.googleapis.com/css?family=Quicksand:300,400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!--script-->
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });


    </script>

</head>
<body>
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
                                        <li><a class="active" href="Main.jsp">메인 <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li><a href="about.jsp">소개</a></li>
                                        <li><a href="dogmanaging.jsp">강아지매니징</a></li>
                                        <li><a href="dogdictionary.jsp">애견사전</a></li>
                                        <li><a href="bbsVO.jsp">커뮤니티</a></li>
                                    </ul>
                                </div>
                            </div>
                            <%
                                UserVO sessionMember = (UserVO) session.getAttribute("member");
                                if (sessionMember != null) {
                            %>
                            <div>
                                <label><%=sessionMember.getId()%>님 환영합니다</label>
                                <button onclick="location.href='../logoutAction.jsp'">Logout</button>
                            </div>
                            <%
                            } else {
                            %>
                            <div>
                                <button class="label label-primary" onclick="location='signin.jsp'"
                                        style="margin-top:.5em; padding-bottom:0em;"><h4>Sign in / Sign up</h4></button>
                            </div>
                            <%
                                }

                            %>

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
<div class="main-content">
    <div class="container">
        <div class="m-content">
            <div class="mainImg">
                <img style="width: 1100px;" src="web_page//images/main_2.jpg" alt="main" class="img-responsive">
            </div>
            <div class="mainTxt">
                <h1>반려동물의 모습을 기록하세요.</h1>
                <br>
            </div>
            <div class="mainBtn">

                <button class="label label-danger"
                        onclick="location='NewDogEnroll.jsp?memberId'">
                    강아지 등록하기
                </button>
                <br>
            </div>

            <div style="top:40%;" class="mainBtn">
                <button class="label label-danger" onclick="if(confirm('로그인이 필요합니다.'))location.href='signin.jsp';">강아지
                    일정 등록
                </button>
                <br>
            </div>
        </div>
        <div class="clearfix"></div>
        <br>
    </div>
</div>
<!--about-->
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
<!---->
<script type="text/javascript">
    $(document).ready(function () {
        /*
        var defaults = {
        containerID: 'toTop', // fading element id
        containerHoverID: 'toTopHover', // fading element hover id
        scrollSpeed: 1200,
        easingType: 'linear'
        };
         */
        $().UItoTop({
            easingType: 'easeOutQuart'
        });
    });
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span
        id="toTopHover" style="opacity: 1;"> </span></a>
<!---->
</body>
</html>