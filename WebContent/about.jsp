<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

      <title>DOGUMENT</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="keywords" content="Play-Offs Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
      <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
      <!meta charset utf="8">
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
      <!--script-->
      <script type="text/javascript">
         jQuery(document).ready(function($) {
            $(".scroll").click(function(event){      
               event.preventDefault();
               $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
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
                                 <li><a href="Main.jsp">메인</a></li>
                                 <li><a class="active" href="about.jsp">소개<span class="sr-only">(current)</span></a></li>
                                 <li><a href="dogmanaging.jsp">강아지매니징</a></li>
                                 <li><a href="dogdictionary.jsp">애견사전</a></li>
                                 <li><a href="bbs.jsp">커뮤니티</a></li>
                              </ul>
                           </div>
                        </div>
                        <div>
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
      <!--header-->
      <!--about-->
      <div class="about-pg">
		<h3>Dogument ?</h3>
		<div class="container">
			<div style="text-align:center; " class="m-content">
				<h4 style="line-height:1.7;">
					<strong>DOGUMENT</strong>는 <strong>Dog</strong>와 <strong>Document</strong>의 합성어로,<br>
					강아지를 관리하기 쉽도록 도움을 제공하고 있습니다.<br>
				</h4>
				<br>
				<div style="padding:0px 10%; background-color:#ffe0e0;" class="abouts">
						<div style="border:2px black;" class="about A">
							<br>
							<img style="padding:30px;" src="web_page/images/013-checklist-18.png" alt="pet" class="img-responsive">
							<br>
							<h4>견종별 맞춤 정보</h4>
							<h6 style="line-height:1.5;">관리 페이지(다이어리)를 통하여<br>견종별 맞춤정보를 추가 제공합니다.</h6>
							<br>
							<br>
						</div>
						<div class="about B">
							<br>
							<img style="padding:30px;" src="web_page/images/008-network.png" alt="pet" class="img-responsive">
							<br>
							<h4>특정 회원들과 공유</h4>
							<h6 style="line-height:1.5;">기록한 정보는 공유기능으로<br>특정회원에게 공유할 수 있습니다.</h6>
							<br>
							<br>
						</div>
						<div  class="about C">
							<br>
							<img style="padding:10px 0px; margin-left:5px;" src="web_page/images/012-account.png" alt="pet" class="img-responsive">
							<br>
							<h4>인증된 펫시터들</h4>
							<h6 style="line-height:1.5;">게시판을 이용하여 인증된<br>펫시터를 매칭시켜드립니다.</h6>
							<br>
							<br>
						</div>
				</div>
				<div class="clearfix"></div>
				<br>
				<div style="height:25px;clear:both;display:block;">
				</div>
				<h4 style="line-height:1.7;">
					게시판을 이용하여 펫시터를 구할 수 있고, 인증된 펫시터들에게는 애견정보를 제공합니다.<br>
					제공된 애견 정보를 바탕으로 펫시터은 강아지에 대한 정보를 미리 파악하여 보다 편안한 환경을 준비할 수 있게됩니다.<br>
				</h4>
				<div class="clearfix"></div>
				<br>
				<div style="height:25px;clear:both;display:block;">
				</div>
				<br>
				<div class="abouts">
					<div class="about A">
						<div class="mainImg">
							<img src="web_page/images/003-report.png" alt="pet" class="img-responsive">
						</div>
					</div>
					<div style="width:100%; padding-top:6%;" class="about B">
						<br>
						<h4 style="line-height:1.8;">
							기록된 정보를 비교하기 쉽게 원하는
							 정보를 그래프로 확인할 수 있습니다.
							공유된 특정회원들과 인증된 펫시터들도
							 일정 추가를 가능하게 하여,
							애완견에 대한 모든 정보를 확인할 수 있습니다.
						</h4>
					</div>
				</div>
				<br>
				<div style="height:25px;clear:both;display:block;">
				</div>
				<br>
				<hr style="border:0; height:3px; background:pink;">
				<br>
				<div  class="our-team">
					<h3>our team</h3>
				</div>
				<br>
				<br>
				<div class="teams">
					<div class="team A">
						<img src="web_page/images/t_1.jpg" alt="" title="" class="img-responsive" />
						<br>
						<h3>유은</h3>
					</div>
					<div class="team B">
						<img src="web_page/images/t_2.jpg" alt="" title="" class="img-responsive" />
						<br>
						<h3>태영</h3>
					</div>
					<div class="team C">
						<img src="web_page/images/t_3.jpg" alt="" title="" class="img-responsive" />
						<br>
						<h3>정희</h3>
					</div>
					<div class="team D">
						<img src="web_page/images/t_4.jpg" alt="" title="" class="img-responsive" />
						<br>
						<h3>한글</h3>
					</div>
					<div class="team E">
						<img src="web_page/images/t_5.jpg" alt="" title="" class="img-responsive" />
						<br>
						<h3>유찬</h3>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	<br>
	</div>
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
            $(document).ready(function() {
                  /*
                  var defaults = {
                  containerID: 'toTop', // fading element id
                  containerHoverID: 'toTopHover', // fading element hover id
                  scrollSpeed: 1200,
                  easingType: 'linear' 
                  };
                  */
            $().UItoTop({ easingType: 'easeOutQuart' });
      });
      </script>
      <a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
      <!----> 
   </body>
</html>
</body>
</html>
