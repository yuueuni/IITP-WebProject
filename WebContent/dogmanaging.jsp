<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="main.java.kr.mycom.jdbcexam.VO.DailyVO"%>
<%@page import="main.java.kr.mycom.jdbcexam.DAO.DailyDAO"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page import="main.java.kr.mycom.jdbcexam.VO.DogVO" %>
<%@ page import="main.java.kr.mycom.jdbcexam.VO.UserVO" %>

<!-- chart -->

<!DOCTYPE html>
<%
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			DailyDAO dao = DailyDAO.getInstace();
			DailyVO data = new DailyVO();
			List<DailyVO> list = dao.getDaily();

		//List<DailyVO> list = (List<DailyVO>) request.getAttribute("list");
				
%>
<html>
<head>
<title>DOGUMENT</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Play-Offs Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<!--bootstrap-->
<link href="web_page/css/bootstrap.min.css" rel="stylesheet"	type="text/css">
<!--coustom css-->
<link href="web_page/css/style.css" rel="stylesheet" type="text/css" />

<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Quicksand:300,400,700'	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'	rel='stylesheet' type='text/css'>

<!-- calendar -->
<link rel=" shortcut icon" href="image/favicon.ico">

    <link rel="stylesheet" href="vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='vendor/css/select2.min.css' />
    <link rel="stylesheet" href='vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="css/main.css">
<!--script-->


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="web_page/js/jquery-2.1.4.min.js"></script>
<script src="web_page/js/bootstrap.min.js"></script>
<script type="text/javascript" src="web_page/js/move-top.js"></script>
<script type="text/javascript" src="web_page/js/easing.js"></script>
<script>
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 900);
		});
	});
</script>
	<script type="text/javascript" src="../jquery.js"></script>


<style>
.navbar-default .navbar-nav>li>a:hover {
   color: #fff;
   background-color: #FF6666;
   padding: 35px 55px;
   transition:0.5s all ease-in-out;
   font-size:16px;
}
ul.nav.navbar-nav li a.active{
   color: #fff;
   background-color: #FF6666;
}
.navbar-default .navbar-nav>.open>a, .navbar-default .navbar-nav>.open>a:focus, .navbar-default .navbar-nav>.open>a:hover {
   color: #fff;
   background-color: #FF6666;
}
.navbar-default .navbar-nav>li>a:focus{
   color: #fff;
   background-color: #FF6666;
}
.navbar-default {
   background-color: transparent !important;
   border: none !important;
   min-height: 90px;
   margin-bottom: 0;
}
.navbar-collapse {
   width:70em;
   padding: 0px 5px;
   margin:0px 70px;
   text-align:center;
}
.navbar-nav {
   float: none !important;
   display:inline-block;
   height:2em;
}
.navbar-nav>li {
   margin-left: 0em !important;
}
.navbar-default .navbar-nav>li>a {
   color: #fff;
   text-decoration: none;
   background: #000000;
   padding: 30px 55px;
   font-family: 'Quicksand', sans-serif;
   font-size:16px;
   font-weight: 700;
}

	.dogageimg{
	height: 300px;
	weight: 300px;

	}
.dogprofile{
	text-align: center;
}

</style>
</head>
<body  style="padding:0;">
	<!--header-part-->
	<div class="banner-background" id="to-top">
		<div class="container">
			<div style="background-color: #fff; padding: 0px 50px 0px 50px;" class="nav-back">
				<div class="navigation">
					<nav style="background-color: transparent !important; border: none !important; min-height: 90px; margin-bottom: 0;" class="navbar navbar-default">
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
									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1">
										<ul style="float: none !important; display:inline-block; height:2em;" class="nav navbar-nav">
											<li><a href="Main.jsp">메인</a></li>
											<li><a href="about.jsp">소개</a></li>
											<li><a class="active" href="dogmanaging.jsp">강아지매니징<span class="sr-only">(current)</span></a></li>
											<li><a href="dogdictionary.jsp">애견사전</a></li>
											<li><a href="bbsVO.jsp">커뮤니티</a></li>
										</ul>
									</div>
								</div>
								<div>
									<%
										UserVO sessionMember = (UserVO) session.getAttribute("member");
										if (sessionMember != null) {
									%>
									<div>

										<label><%=sessionMember.getId()%>님</label>
										<button float="right" class="btn btn-default" onclick="location.href='../logoutAction.jsp'">Logout</button>
									</div>
									<%
									} else {
									%>

									<span>
                                <button class="label label-primary" onclick="location='signin.jsp'" style="margin-top:.5em; padding-bottom:0em;"><h5>Sign in</h5></button>
                            </span>

									<span>
                                <button class="label label-primary" onclick="location='signup.jsp'" style="margin-top:.5em; margin-left:10px; padding-bottom:0em;"><h5>Sign up</h5></button>
                            </span>
									<%
										}

									%>
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
		<div class="dogprofile">
		<h3>강아지 매니징</h3>
		<div>
			<img src="web_page/images/4.jpg" class="img-circle"   alt="Cinque Terre" width="100" height="100">
		</div>
		이름 : momo<br>
		나이 : 2<br>
		지역 : seoul<br>
		특징 : 털이많음
		<hr>
		</div>
		
		<div class="container">
			<br>
			<h4>우리 댕댕이의 몸무게 변화 및 간식 횟수</h4>
			<script type="text/javascript"
				src="https://www.gstatic.com/charts/loader.js"></script>
			<div id="chart_div"></div>
			<div id="chart_div2"></div>
			<div class="clearfix"></div>

			<div class="jquery-script-clear"></div>
			<div class="event-calendar"></div>
		</div>

	</div>
	<div class="clearfix"></div>
	<br>
	<hr>

	<span style="text-align: center;" class="about-pg ">
		<h3>우리 댕댕이 나이는 사람으로 몇 살일까?</h3>
		<div>
		<img class="dogageimg" src="web_page/images/dogage.png" /> <br> <br>
</div>
		<form action="dogage.jsp" method="GET" enctype="multipart/form-data">

			<div class="dogsize-botton">
				<input type="radio" name="dogsize" value="big">  대형견<br>
				<br> <input type="radio" name="dogsize" value="small">  소형견<br>
				<br> <br>
			</div>

			<input style="width: 20em;" type="text" name="dogage" id="dogage" 	class="inpt" placeholder="강아지 나이를 입력해주세요"> <br> <br>


			<div class="submit-wrap">
				<!--<button  id="dogage" class="btn btn-info" onclick="dogage_click()" >댕댕이 나이 계산하기</button>-->
				<input type="submit"  style="margin-bottom: 50px" class="btn btn-default" value="댕댕이 나이 계산하기">

            </div>

			<!--<span>댕댕이의 나이는 사람나이로 26살 입니다.</span>-->

			<div id="dogageresult">	</div>
		</form>
</span>

	</div>
	<script type="text/javascript">

		$(document).ready(function(){
			$(".button").click(function(){
				callAjax();
			});
		});

		function callAjax(){
			$.ajax({
				type: "GET",
				url : "dogage.jsp",
				data: "text",
				success: whenSuccess,
				error: whenError
			});

		}

		function whenSuccess(resdata){

			$("#dogageresult").html(dogsize);

			console.log(dogsize);

		}



		function whenError(){

			alert("Error");

		}

	</script>




	<script>

		google.charts.load('current', {
			packages : [ 'corechart', 'line' ]
		});
		google.charts.setOnLoadCallback(drawBasic);

		function drawBasic() {

			var data = new google.visualization.DataTable();
			data.addColumn('number', 'X');
			data.addColumn('number', 'Weight');

			data.addRows([
			<%
			for(int i=0;i<list.size();i++){
				data = list.get(i);
				 
				%>
				[ <%=i%>,<%=data.getWeight()%>  ]
<%
				if(list.size()>i+1){
					%>,<%
				}
			}
%>
				
				]);

			var options = {
				hAxis : {
					title : 'Day'
				},
				vAxis : {
					title : '몸무게'
				}
			};

			var chart = new google.visualization.LineChart(document
					.getElementById('chart_div'));

			chart.draw(data, options);
		}
		</script>

		<script>
		google.charts.load('current', {
			packages : [ 'corechart', 'line' ]
		});
		google.charts.setOnLoadCallback(drawBasic);

		function drawBasic() {

			var data = new google.visualization.DataTable();
			data.addColumn('number', 'X');
			data.addColumn('number', 'FeedTime');

			data.addRows([
			<%
			for(int i=0;i<list.size();i++){
				data = list.get(i);
				 
				%>
				[ <%=i%>,<%=data.getFeedtime()%>  ]
<%
				if(list.size()>i+1){
					%>,<%
				}
			}
%>
				]);
			
			
			var chartdata;
			
			
			var options = {
				hAxis : {
					title : 'Day'
				},
				vAxis : {
					title : '간식횟수'
				},
				colors: ['red']
			};

			var chart = new google.visualization.LineChart(document
					.getElementById('chart_div2'));

			chart.draw(data, options);
		}		
		</script>

		
    <script src="vendor/js/jquery.min.js"></script>
    <script src="vendor/js/bootstrap.min.js"></script>
    <script src="vendor/js/moment.min.js"></script>
    <script src="vendor/js/fullcalendar.min.js"></script>
    <script src="vendor/js/ko.js"></script>
    <script src="vendor/js/select2.min.js"></script>
    <script src="vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/addEvent.js"></script>
    <script src="js/editEvent.js"></script>
    <script src="js/etcSetting.js"></script>

	
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
		$(document).ready(function() {
			/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
			 */
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>

	<script src="web_page/js/chart.js"></script>
	<a href="#to-top" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- calendar -->
	<script type="text/javascript">
	<!--
		google_ad_client = "ca-pub-2783044520727903";
		/* jQuery_demo */
		google_ad_slot = "2780937993";
		google_ad_width = 728;
		google_ad_height = 90;
	//-->
	</script>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>


	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</body>
</html>