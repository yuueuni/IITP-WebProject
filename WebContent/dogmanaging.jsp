
<%@page import="main.java.kr.mycom.jdbcexam.VO.DailyVO"%>
<%@page import="main.java.kr.mycom.jdbcexam.DAO.DailyDAO"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!-- chart -->
	
<!DOCTYPE html>
<%
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			DailyDAO dao = DailyDAO.getInstace();
			List<DailyVO> list = dao.getDaily();
			DailyVO data = new DailyVO();	
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
<!-- calendar -->
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<link href="Calendar/dist/equinox.css" rel="stylesheet" type="text/css">


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
<script type="application/x-javascript">
	      
    addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
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
											<li><a href="bbs.jsp">커뮤니티</a></li>
										</ul>
									</div>
								</div>
								<div>
									<button class="label label-primary"
										onclick="location='signin.jsp'"
										style="margin-top: .5em; padding-bottom: 0em;">
										<h4>Sign in / Sign up</h4>
									</button>
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
   <!-- calendar -->
   <div class="container">

        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">산책</a></li>
                <li><a tabindex="-1" href="#">음식</a></li>
                <li><a tabindex="-1" href="#">간식</a></li>
                <li><a tabindex="-1" href="#">배변</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">구분</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <option value="산책">산책</option>
                                    <option value="음식">음식</option>
                                    <option value="간식">간식</option>
                                    <option value="배변">배변</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">설명</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">구분별</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="산책">산책</option>
                            <option value="음식">음식</option>
                            <option value="간식">간식</option>
                            <option value="배변">배변</option>
                        </select>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">등록자별</label>
                    <div class="input-group">
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="정연"
                                checked>정연</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="다현"
                                checked>다현</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="사나"
                                checked>사나</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="나연"
                                checked>나연</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="지효"
                                checked>지효</label>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.filter panel -->
    </div>
	
	<div style="text-align: center;" class="about-pg ">
		<h3>우리 댕댕이 나이는 사람으로 몇 살일까?</h3>
	<img class="img" style="height: 300px"  "weight: 300px" src="web_page/images/dogage.png" /> <br> <br>
		<form action="" enctype="multipart/form-data">
			<div class="dogsize-botton">
				<input type="radio" name="dogsize" value="big">대형견<br>
				<br> <input type="radio" name="dogsize" value="small">소형견<br>
				<br> <br>
			</div>
			<input style="width: 20em;" type="text" name="dogage" id="dogage"
				class="inpt" placeholder="강아지 나이를 입력해주세요"> <br> <br>
			<div class="submit-wrap">
				<!-- <input type="button" class="calbutton" value="강아지 나이 계산하기" > -->
			</div>
			<!-- <button data-toggle="collapse"  onclick="dogage_click()" >Collapsible</button> -->
			<div class="container">
				<a href="javascript:doDisplay();" class="btn btn-info">계산하기</a>
					<div id="myDIV">
					</div>
				<div id="demo" class="collapse">
					<p id="result"></p>
				</div>
				
			</div>
		</form>

	</div>
	

	<script>
		
	var bDisplay = true;
	function doDisplay(){
	    var con = document.getElementById("myDIV");
	    if(con.style.display=='none'){
	        con.style.display = 'block';
	        var html = '';
	        html += '<p>'+dogage_click()+'</p>';
	        $('#myDIV').html(html);
	    }else{
	        con.style.display = 'none';
	    }
	}

	
	
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
			
			
			var chartdata;
			
			
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
				return ("사람나이로 환산 시 우리 댕댕이 나이는 현재 " + humanage + "살 입니다.");
				//result.appendChild(final1);

			} else {
				humanage = 12 + (dogage - 1) * 7;
				document.getElementById("result").innerHTML = humage;
				return ("사람나이로 환산 시 우리 댕댕이 나이는 현재 " + humanage + "살 입니다.");
				// var result = document.createElement("h1");
				//result.dogsize.appendChild(result);
			}

		}//dog age to human
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

	<script src="Calendar/dist/equinox.min.js">
		$('.event-calendar').equinox({
			events : [ {
				start : '2018-04-20 17:30',
				end : '2018-04-22 17:30',
				title : 'jQueryScript.Net',
				url : '#',
				class1 : '',
				color : '#000',
				data : {}
			} ],
		});
	</script>
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