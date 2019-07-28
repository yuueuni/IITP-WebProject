<%@ page import="main.java.kr.mycom.jdbcexam.servlet.DogServlet" %>
<%@ page import="main.java.kr.mycom.jdbcexam.dto.ChartDataDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
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
    <!-- calendar -->
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <link href="Calendar/dist/equinox.css" rel="stylesheet" type="text/css">
    <!--script-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="web_page/js/jquery-2.1.4.min.js"></script>
    <script src="web_page/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="web_page/js/move-top.js"></script>
    <script type="text/javascript" src="web_page/js/easing.js"></script>
    <!--fonts-->
    <link href='http://fonts.googleapis.com/css?family=Quicksand:300,400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <script>
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
                                        <li><a href="board.jsp">커뮤니티</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div>
                                <button class="label label-primary" onclick="location='signin.jsp'"
                                        style="margin-top:.5em; padding-bottom:0em;"><h4>Sign in / Sign up</h4></button>
                            </div>
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
    <h3>강아지 매니징</h3>
    <br>
    <div class="container">
        <br>
        <h4>산책 시간</h4>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <div id="chart_div"></div>
        <div class="clearfix"></div>

        <div class="jquery-script-clear"></div>
        <div class="event-calendar"></div>
    </div>

</div>
<div class="clearfix"></div>
<br>

<div style="text-align:center;" class="about-pg ">
    <i class="fas fa-dog"></i>
    <h3>우리 댕댕이 나이는 사람으로 몇 살일까?</h3>
    <img class="img" src="web_page/images/dogage.png"/>
    <br>
    <br>
    <form action="" enctype="multipart/form-data">
        <div class="dogsize-botton">
            <input type="radio" name="dogsize" value="big">대형견<br>
            <br>
            <input type="radio" name="dogsize" value="small">소형견<br>
            <br>
            <br>
        </div>
        <input style="width:20em;" type="text" name="dogage" id="dogage" class="inpt" placeholder="강아지 나이를 입력해주세요">
        <br>
        <br>
        <div class="submit-wrap">
            <!-- <input type="button" class="calbutton" value="강아지 나이 계산하기" > -->
        </div>
        <!-- <button data-toggle="collapse"  onclick="dogage_click()" >Collapsible</button> -->
        <div class="container">
            <a href="#demo" class="btn btn-info" onclick="dogage_click()" data-toggle="collapse">Simple collapsible</a>
            <div id="demo" class="collapse">
                <p id="result"></p>
            </div>
        </div>
    </form>
    <i class="fas fa-bone"></i>
</div>
<div class="clearfix"></div>

<script>

    google.charts.load('current', {packages: ['corechart', 'line']});
    google.charts.setOnLoadCallback(drawBasic);

    function drawBasic() {

        var data = new google.visualization.DataTable();
        data.addColumn('number', 'X');
        data.addColumn('number', 'Dogs');
        <%
           DogServlet dogServlet = new DogServlet();
           List<ChartDataDto> chartDataList = new ArrayList();

        %>

        var chartData = <%=chartDataList%>

        data.addRows( chartData
        //     [
        //     [0, 0], [1, 10], [2, 23], [3, 17], [4, 18], [5, 9],
        //     [6, 11], [7, 27], [8, 33], [9, 40], [10, 32], [11, 35],
        //     [12, 30], [13, 40], [14, 42], [15, 47], [16, 44], [17, 48],
        //     [18, 52], [19, 54], [20, 42], [21, 55], [22, 56], [23, 57],
        //     [24, 60], [25, 50], [26, 52], [27, 51], [28, 49], [29, 53],
        //     [30, 55], [31, 60], [32, 61], [33, 59], [34, 62], [35, 65],
        //     [36, 62], [37, 58], [38, 55], [39, 61], [40, 64], [41, 65],
        //     [42, 63], [43, 66], [44, 67], [45, 69], [46, 69], [47, 70],
        //     [48, 72], [49, 68], [50, 66], [51, 65], [52, 67], [53, 70],
        //     [54, 71], [55, 72], [56, 73], [57, 75], [58, 70], [59, 68],
        //     [60, 64], [61, 60], [62, 65], [63, 67], [64, 68], [65, 69],
        //     [66, 70], [67, 72], [68, 75], [69, 80]
        // ]
        );

        var options = {
            hAxis: {
                title: 'Day'
            },
            vAxis: {
                title: 'Time'
            }
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

        chart.draw(data, options);
    }


    //dog age to human
    var humanage;
    var dogsize;
    var dogage;
    var result = document.getElementsByName("result");

    function dogage_click() {

        dogsize = document.getElementsByName("dogsize");
        dogsize = dogsize[0].value;

        dogage = document.getElementById("dogage").value;
        console.log(dogage);


        if (dogsize == "big" && dogage > 0) {
            console.log("대형견")
            humanage = 24 + (dogage - 2) * 4;
            //var final1 = document.createElment("h1");
            //final1.innerHTML = humanage;
            alert("사람나이로 환산 시 우리 댕댕이 나이는 현재 " + humanage + "살 입니다.");
            //result.appendChild(final1);

        } else {
            humanage = 12 + (dogage - 1) * 7;
            document.getElementById("result").innerHTML = humage;
            alert("사람나이로 환산 시 우리 댕댕이 나이는 현재 " + humanage + "살 입니다.");
            // var result = document.createElement("h1");
            //result.dogsize.appendChild(result);
        }

    }

    //dog age to human


</script>
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

<script src="web_page/js/chart.js"></script>
<a href="#to-top" id="toTop" style="display: block;"> <span
        id="toTopHover" style="opacity: 1;"> </span></a>
<!-- calendar -->
<script type="text/javascript"><!--
google_ad_client = "ca-pub-2783044520727903";
/* jQuery_demo */
google_ad_slot = "2780937993";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript" src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>

<script src="Calendar/dist/equinox.min.js"></script>


$('.event-calendar').equinox({
events: [{
start: '2018-04-20 17:30',
end: '2018-04-22 17:30',
title: 'jQueryScript.Net',
url: '#',
class1: '',
color: '#000',
data: {}}],
});

<script type = "text/javascript" >

var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-36251023-1']);
_gaq.push(['_setDomainName', 'jqueryscript.net']);
_gaq.push(['_trackPageview']);

(function () {
    var ga = document.createElement('script');
    ga.type = 'text/javascript';
    ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(ga, s);
})();

</script>
</body>
</html>