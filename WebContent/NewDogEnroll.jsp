<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!meta charset utf="8">


<!--bootstrap-->
<link href="web_page/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<!--coustom css-->
<link href="web_page/css/style.css" rel="stylesheet" type="text/css" />
<!--script-->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="web_page/js/jquery-2.1.4.min.js"></script>
<script src="web_page/js/bootstrap.min.js"></script>
<script type="text/javascript" src="web_page/js/move-top.js"></script>
<script type="text/javascript" src="web_page/js/easing.js"></script>
<!--fonts-->
<link	href='http://fonts.googleapis.com/css?family=Quicksand:300,400,700'	rel='stylesheet' type='text/css'>
<link	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'	rel='stylesheet' type='text/css'>
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
	<!--header-part-->
   <div class="banner-background" id="to-Top">
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
                  <div style="display: flex; justify-content: space-around;">
                     <div style="display: flex; justify-content: flex-end;">
                        <div class="logo">
                           <h1>
                              <a href="index.html">Dog<span class="hlf">ument</span></a>
                           </h1>
                        </div>
                        <div class="mainmenu">
                           <div class="collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">
                              <ul class="nav navbar-nav">
                                 <li><a href="index.html">메인</a></li>
                                 <li><a href="about.html">소개</a></li>
                                 <li><a class="active" href="mypage.html">강아지매니징</a><span
                                    class="sr-only">(current)</span></li>
                                 <li><a href="dog.html">애견사전</a></li>
                                 <li><a href="board.html">커뮤니티</a></li>
                              </ul>
                           </div>
                        </div>
                        <div class="member">
                           <button class="label label-primary"	onclick="location='signin.jsp'">Sign up / Sign up</button>
                        </div>
                     </div>
                  </div>
                  <!-- /.navbar-collapse -->
                  <div class="clearfix"></div>
                  <div class="clearfix"></div>
               </nav>
               <div class="clearfix"></div>
            </div>
         </div>
      </div>
   </div>
    <!--header-->
    <div class="about-pg">
        <h3>강아지 등록</h3>
         </div>
         
         	<form action="" method="post" enctype="multipart/form-data" name="">
       			
        
        <div style="text-align:center;" class="content">
            <fieldset style="margin:0px 300px;">
            
    		<input type="file" name="FileName">

                <tr>
                    <th>이름</th>
                    <td><input type="text" name="dogname" value="" /></td>
                </tr>
                <hr>
                <tr>
                    <th>몸무게</th>
                    <td><input type="text" name="weight" value="" /></td>
                </tr>
                <hr>
                <tr>
                    <th>나이</th>
                    <td><input type="text" name="age" min="1" max="200" value="" /></td>
                </tr>
                <hr>
                <tr>
                    <th>지역</th>
                    <td><input type="text" name="location" value="" /></td>
                </tr>
                <hr>
                <tr>
                    <th>특이사항</th>
                    <td><input type="text" name="note" value="" /></td>
                </tr>
                <hr>
                <tr>
                    <th>견종</th>
                    <select name="dogtype">
                        <option value="믹스견">믹스견</option>
                        <option value="보더콜리d">보더콜리</option>
                        <option value="골든 리트리버" selected>골든 리트리버</option>
                        <option value="푸들">푸들</option>
                        <option value="닥스훈트">닥스훈트</option>
                    </select>
                </tr>      
            </fieldset>
            </div>
            </form>
            <hr>
            <nav style="text-align: center;">
                    <div class="submit-wrap">                                    
                          <input type="submit" value="등록" >                                    
                    </div>
                </nav>
            <br>
        </div>
   
   <!--services-->
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
            $().UItoTop({ easingType: 'easeOutQuart' });
      });
      </script>
   <a href="#to-top" id="toTop" style="display: block;"> <span
      id="toTopHover" style="opacity: 1;"> </span></a>
   <!---->

</body>
</html>