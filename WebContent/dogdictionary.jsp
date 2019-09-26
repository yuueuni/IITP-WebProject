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
      <!-- jquery -->
      <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<style>
		.img-responsive{
			height:200px;
			weight:200px;
		}
	</style>
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <!--script-->
      <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
      <script type="text/javascript">
         jQuery(document).ready(function($) {
            $(".scroll").click(function(event){      
               event.preventDefault();
               $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
            });
         });
      </script>
      <style>
      .dic img {
         width : 150px;
         height:150px;
      }
      </style>
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
                                 <li><a href="about.jsp">소개</a></li>
                                 <li><a href="dogmanaging.jsp">강아지매니징</a></li>
                                 <li><a class="active" href="dogdictionary.jsp">애견사전<span class="sr-only">(current)</span></a></li>
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
      <!--services-->
         <div class="services">
            <div class="container">
               <div class="service-list">
                  <h3>애견사전</h3>
                 <div id="tabs">
		<ul>
		  <li><a href="#tabs-1">소형견</a></li>
		  <li><a href="#tabs-2">중형견</a></li>
		  <li><a href="#tabs-3">대형견</a></li>
		</ul>
		<div id="tabs-1">
			<div style="display:flex;" class="dogdic">
				<img class="img-responsive" src="web_page/images/dog1.jpg" />
				<p style="margin-left:10px;"><strong> 견종 : 말티즈 <br>모색 : 흰색 <br>활동량 : 많음 <br>털빠짐 : 매우 적음 <br>키 : 20~25cm <br>무게 : 평균 3~4kg <br>지능 : 중 </strong> <br><br>특징 :순백색의 비단결 같은 겉털 아래 이른바 언더코트(undercoat)로 불리는 속
					털이 없는 것이 특징이다. 긴 털은 등에서 좌우로 갈라져서 땅에 닿을 정도로 늘어져 있는데, 뒤틀림이 전혀 없다. 머리 윗
					부분이 둥글게 굽어 있고, 양쪽 귀의 간격이 넓다. 눈은 검고 털 안쪽에 외따로 붙어 있다. 귀와 꼬리, 네 다리에도 장식털이 
					풍부하며, 등이 곧고 가슴이 잘 발달하였다. 크기는 작지만 튼튼하며 쾌활하고 붙임성이 있어 지금도 애완견으로 큰 사랑을
					 받고 있다. 단 헛짖음이 많고 아이들에게 대드는 경향이 있으므로 주의해야 한다. 귀엽다고 응석을 받아주면 버릇없는 개
					가 되기 쉬우므로 어릴 때부터 좋고 나쁜 것을 구별하도록 길들이는 것이 좋다. </p> 
			</div>
			<div class="clearfix"></div>
			<br>
			<br>
			<br>
			
			<div style="display:flex;" class="dogdic">
					<img class="img-responsive" src="web_page/images/dog2.jpg" />
					<p style="margin-left:10px;"><strong> 견종 : 시추 <br>모색 : 흰색+갈색, 흰색+검정색 <br>활동량 : 적음 <br>털빠짐 : 적음 <br>키 : 22~27cm <br>무게 : 평균 5~7kg <br>지능 : 하 </strong> <br><br>특징 : 멋지게 늘어진 털이 사자 갈기처럼 보여 중국어로 사자라는 뜻의 이름이 지어졌다. 광택이 있는 
						긴 털이 온몸을 덮어 매일 손질해 주어야 하지만 숱에 비해 털이 잘 안 빠지고 냄새도 적어 가정에서 기르기에 좋다. 머리를 
						높이 들고 꼬리를 세운 채 걷는 모습이 앙증맞고 당당해 보이며, 크고 동그란 눈이 따뜻한 인상을 준다. 멀리서도 주인의 발
						자국 소리를 구별할 만큼 청각이 예민하다. 성격은 활발하고 익살맞지만 주인 이외에는 잘 따르지 않는 새침데기이며, 자존
						심이 강해서 명령조로 가르치기보다는 칭찬하면서 버릇들이기를 해야 말을 잘 듣는다.
						
				</div>
				<div class="clearfix"></div>
				<br>
				<br>
				<br>
				
		    <div style="display:flex;" class="dogdic">
				     <img class="img-responsive" src="web_page/images/dog3.jpg" />
					  <p style="margin-left:10px;"> <strong> 견종 : 요크셔테리어 <br>모색 : 황갈색, 감청색 <br>활동량 : 많음 <br>털빠짐 : 적음(알러지 유발 주의) <br>키 : 20~23cm <br>무게 : 평균 2~3kg <br>지능 : 상 </strong> <br><br>특징 : 움직이는 보석이라고 불릴 정도로 가장 유명하고 인기있는 견종 중 하나. 비단실 같은 긴 털이 온몸을 뒤덮고 있어 마치 부
						인이 옷을 땅에 끌리도록 입고 다니는 것과 같이 보인다. 머리는 약간 작고 등은 곧으며 사지는 짧고 꼬리는 잘라준다. 앞발
						은 곧고 발가락은 동그랗다. 발바닥은 탄력적이며 발톱은 길다. 털은 머리·사지에는 짙은 황갈색이고 그 밖의 색은 어두운 
						감청색이다. 그러나 1년생 정도의 어린 개의 경우에는 그 독특한 털빛깔은 나타나지 않고 거무스름하다. 얼굴의 생김새가 
						귀엽고, 맑고 뚜렷한 눈은 표현력이 풍부하며 성질도 영리하고 인내력도 강하다.
				</div>
				<div class="clearfix"></div>
				<br>
				<br>
				<br>

			<div style="display:flex;" class="dogdic">
					  <img class="img-responsive" src="web_page/images/dog4.jpg" />
					   <p style="margin-left:10px;"> <strong> 견종 : 비숑프리제 <br>모색 : 흰색 <br>활동량 : 많음 <br>털빠짐 : 적음 <br>키 : 23~30cm <br>무게 : 평균 3~6kg <br>지능 : 중 </strong> <br><br>특징 : 프랑스가 원산지인 애완견으로 보통 희고 꼬불꼬불한 털을 지녔으며 목을 당당하게 들고 쾌활하게 걷는 특징이 있다. 체구
						는 작지만 단단하다. 머리는 풍부한 털로 덮여 있어 둥글게 보이며 눈은 크고 둥글다. 귀는 두개부의 앞쪽에서 아래로 처져 
						있으며, 길고 아름다운 털로 덮여 있다. 몸은 명주실 같은 털이 부풀려 있으며 속털은 길고 부드러운 반면, 겉털은 곱슬곱슬
						하고 거칠다. 털빛깔은 흰색이고 눈과 코, 눈 주위와 입술, 발바닥 등은 검은색이다. 성격이 활발하고 영리하다. 예의바르고 
						행동이 민첩해서 서커스에도 출연하며 맹인 안내견으로 사육되기도 한다. 
				</div>
				<div class="clearfix"></div>
				<br>
				<br>
				<br>
			
			<div style="display:flex;" class="dogdic">
				       <img class="img-responsive" src="web_page/images/dog5.jpg" />
						<p style="margin-left:10px;"> <strong> 견종 : 포메라니안 <br>모색 : 검은색, 갈색, 흰색 등 <br>활동량 : 많음 <br>털빠짐 : 매우 적음 <br>키 : 20~25cm <br>무게 : 평균 3~4kg <br>지능 : 중 </strong> <br><br>특징 : 독일과 폴란드 북부지역인 포메라니안만이 원산이다. 시베리아의 썰매견 사모예드가 조상견으로 체구에 비해 튼튼하고 활
							발하며 대범한 성격에 호기심이 많아서 다른 개들에게도 관심이 많다. 또한 주의깊고 영리하며 기억력이 뛰어나 훈련을 잘 
							받아 들인다. 주인에 대한 충성심이 각별하고 욕심과 애교가 넘쳐 항상 주인을 독차지 하려는 경향이 있다. 몸통은 짧고 야
							무지며 가슴이 비교적 두텁고 둥근 모양을 하고 있으며 꼬리가 등위로 말려 올라간 작은 개이다. 주둥이는 짧고 뾰족하여 여
							우와 비슷한 얼굴에 귀는 작고 빳빳이 서 있다. 장식털이 풍부한 꼬리를 비롯하여 전체가 화려한 털로 덮여 있어서 매우 아
							름답다. 
					</div>
					<div class="clearfix"></div>
					<br>
					<br>
				    <br>	

		    <div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog6.jpg" />
						 <p style="margin-left:10px;"> <strong> 견종 : 푸들 <br>모색 : 흰색, 살구색, 청색, 갈색 등 <br>활동량 : 많음 <br>털빠짐 : 적음 <br>키 : 스탠다드(38~60cm),미디엄(25~38cm),토이(25cm이하) <br>무게 : 스탠다드(20~27kg),미디엄(7~26kg),토이(6kg이하) <br>지능 : 중 </strong> <br><br>특징 : 프랑스 원산이며 애완용으로 많이 기른다. 프랑스에서 개량된 것을 영국에서 수입하여 유명한 개로 만들었다. 푸들은 몸높
							이에 따라 스탠다드(38.1cm 이상)·미디엄(25.4∼38.1cm)·토이(25.4cm 이하) 등 세 가지로 분류하고 대형은 가정견으로, 중
							 ·소형은 애완용으로 각광을 받고 있다. 우아하고 기품있는 용모를 지니며, 활동적이다. 체구는 정방형으로 균형이 잘 잡혀
							 있으며, 앞다리와 뒷다리가 모두 일직선이며 근육이 발달해 있다. 빽빽하고 곱슬곱슬한 털로 덮여 있으며 털갈이를 하지는
							 않는다. 외모처럼 깜직하고 사교적인 성격이어서 애교를 잘 부리며 지혜롭고 영리해 사람의 말을 잘 알아듣고 훈련도 잘 
							따르는 편이다.
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
				        <br>
			
		    <div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog7.jpg" />
						  <p style="margin-left:10px;"><strong> 견종 : 비글 <br>모색 : 흰색, 검은색, 갈색 등 <br>활동량 : 많음 <br>털빠짐 : 보통 <br>키 : 33~40cm <br>무게 : 10~16kg <br>지능 : 하 </strong><br><br>특징 : 애니메이션 캐릭터 스누피의 모델로 유명한 견종이다. 비글의 이름은 '요란하게 짖는다' 또는 '작다'를 내는 프랑스어에서 
							유래됨. 눈은 어두운 갈색이며 귀가 적당하게 낮고 길게 늘어져 상당히 넓다. 겨울부터 털갈이 시기에 속 털이 많이 빠져 
							털에 민감한 사람은 애완용으로 키우는 일을 피해야 한다. 성격은 자기가 생각한 대로 행동하고 소란스러운면이 있다. 
							인터넷상에서 슈나우져, 코커 스패니얼과 함께 '3대 악마견'으로 불리움. 낮고 크게 울리는 소리를 가지고 있어 아파트와 
							같은 주거환경에서는 키우기 부적합. 이유없이 짖지 않도록 강도 높은 훈련이 필요하다. 고집이 세고 훈련시키기 조금 어려
							운 면은 있지만 어릴 때부터 꾸준하고 엄격하게 훈련을 시키면 온순하고 애교가 많아 어린이들의 좋은 친구가 될 수 있다.
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
				        <br>	

			<div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog8.jpg" />
						  <p style="margin-left:10px;"> <strong> 견종 : 치와와 <br>모색 : 갈색, 검은색, 붉은색 등 <br>활동량 : 많음 <br>털빠짐 : 적음 <br>키 : 13~22cm <br>무게 : 평균 3kg 이하 <br>지능 : 중 </strong> <br><br>특징 : 멕시코 원산이며 개들 중에서 가장 작은 품종으로 유명하다. 주인에 대한 충성심이 높고 애교가 있는 반면, 질투심이 많고 
							크기에 비해 고집이 세고 겁이 없는 견종. 다른 개와 시비가 붙으면 체급상 크게 밀리는 경우라도 쉬이 물러서지 않고 대드
							는 독종이라는 이미지가 있다. 활동성이 높으며 곧잘 복종하지 않는 독립심 있는 성격으로 알려져 있다. 다만 그 기질에 
							비해 크기가 작고 악력이 약하여 실내견으로 자리 잡을 수 있었다. 우아하고 기민하며, 재빠르게 움직인다. 얼굴형이 예쁘
							고 크기가 작아서 교배종으로도 인기가 많다. 여러가지 품종의 개들 사이에서도 같은 치와와끼리 뭉치는 속성이 있다.
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
				        <br>	

		    <div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog9.jpg" />
						<p style="margin-left:10px;"> <strong> 견종 : 퍼그 <br>모색 : 은색, 살구색, 황갈색, 흑색 등 <br>활동량 : 보통 <br>털빠짐 : 많음 <br>키 : 20~30cm <br>무게 : 평균 6~8kg <br>지능 : 하 </strong> <br><br>특징 : 중국 송나라 시대에 등장한 것으로 추정되며 원래 송나라에서 키우던 퍼그는 늑대를 닮은 굉장히 잘생긴 외모로 지금과는
							상당히 다르게 생겼다. 그러다 실크로드로 전세계를 휘어잡고 있던 중국인들이 영국으로 퍼그를 데리고 갔고 그것이 발단
							이 되어 퍼그가 유럽에 알려지게 된다. 눈은 금방이라도 튀어나올 듯이 크고 주둥이가 무언가에 눌려 찌그러진 것처럼 쭈
							글쭈글하다. 선천적으로 살집이 있는 통통한 체격에, 털은 광택이 있고 보드랍다. 농담으로라도 예쁘거나 멋지다고는 할 수
							없지만 극에 달한 개성 덕분에 인지도는 높다. 애교가 많은 편이라 반려견으로서의 인기가 좋은 편이며 느긋하고 순한 성격
							이나 나름대로 고집이 있다. 주인의 명령보다 자기 뜻대로 행동하려는 경향이 있다.
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
				        <br>

		</div>
		<div id="tabs-2">
				<div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog10.jpg" />
						<p style="margin-left:10px;"> <strong> 견종 : 불독 <br>모색 : 붉은색, 담황색, 흰색, 갈색 등 <br>활동량 : 적음 <br>털빠짐 : 많음 <br>키 : 30~41cm <br>무게 : 22~25kg <br>지능 : 하 </strong>  <br><br>특징 : 영국 잉글랜드가 원산이다. 짧은 다리와 높게 위치한 코, 윗턱 보다 아랫 턱이 나온 모습 특징인 불독. 외관과 태도는 견실
							하며 정열적이고 힘이 센 인상을 준다. 불독은 공격성이 없고 유순하지만 화가 났을때는 주의해야 하므로 평소에 기초적인
							 복종훈련을 해두는 것이 좋다. 머리가 크고 코가 위로 벌어져 있어 잠 잘때 코를 심하게 곤다. 오랜 역사를 가진 투견으로, 
							영국 토착견과 마스티프로와의 교배로 만들어졌다고 한다. 교배로 인한 유전적 결함이 매우 심해 호흡기, 구강 관련 유전
							질병이 많은 편이다. 또한 지능도 매우 낮은편으로 여러가지 견종 중 최하위권에 랭크되어 있다. 실제로도 일반적인 개에 
							비해 학습능력이 떨어지고 공간 지각력, 상황 대처능력이 매우 떨어진다.
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
						<br>
						
		
			    <div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog11.jpg" />
					    <p style="margin-left:10px;"> <strong> 견종 : 보더콜리 <br>모색 : 검은색, 회색, 흰색, 푸른색 등 <br>활동량 : 많음 <br>털빠짐 : 보통 <br>키 : 45~53cm <br>무게 : 15~20kg <br>지능 : 상 </strong> <br><br>특징 : 원산지는 영국의 스코틀랜드이다. 8∼11세기에 바이킹들이 콜리를 스코틀랜드로 들여왔으며 그후 개량을 거쳐 순록 등을 
							지키는 훌륭한 목양견이 되었다. 골격이 튼튼하며 몸매가 잘 균형 잡혀 있다. 머리는 넓고 이마는 편평하며 양볼은 안쪽으
							로 패어 있다. 귀는 반만 쫑긋 세워져 있다. 꼬리는 보통 길이이고 낮게 늘어져 있다. 겉털은 갈기처럼 길고 풍성하며, 속털
							은 짧고 부드럽다. 얼굴, 귀 끝, 앞다리, 뒷다리의 발끝에서 무릎까지는 매끄러운 털이 짧게 나 있다. 체력이 매우 뛰어나며 
							목양견으로서의 습성 때문에 판단력이 뛰어나고 행동도 민첩하다. 개 지능테스트에서 가장 영리한 개로 뽑혔을 정도로 
							총명하고 학습 능력이 뛰어나며 주인에게 충성해 깊은 애정을 보인다. 집에서 키울 때는 적당한 운동을 시켜주어야만 스
							트레스를 받지 않는다.
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
						<br>

		
			    <div style="display:flex;" class="dogdic">
					    <img class="img-responsive" src="web_page/images/dog12.jpg" />
						<p style="margin-left:10px;"> <strong> 견종 : 웰시코기 <br>모색 : 검은색, 레트, 화운 등 <br>활동량 : 많음 <br>털빠짐 : 많음 <br>키 : 25~30cm <br>무게 : 평균 10~12kg <br>지능 : 상 </strong> <br><br>특징 : 머리가 여우와 흡사한데, 특히 귀가 사막여우마냥 넓다. 그에 비해 다리는 닥스훈트처럼 극단적으로 짧아 땅딸막한 소몰이
							개로 알려진 참 귀엽게 생긴 개. 그 파닥파닥대는 숏다리가 나름 귀여워서 매력 포인트로 뽑인다. 다리가 짧아 소형견이라
							고 착각하는 사람들이 많은데 신장 25~32cm, 체중 10~17kg 정도로 중형견이다. 사모예드나 포메라니안 등과 친연관계가
							가깝다. 성격은 하룻강아지 범 무서운 줄 모르는 타입으로, 상당히 적극적이고 호기심이 많은 편이다. 지능도 높으며, 개
							스스로 난관에 닥쳤을 때 스스로 판단하여 해결하는 경우가 많다. 사람과 스킨쉽하기를 무척이나 좋아하고 애교도 많은 데
							다, 어린이에 대한 친밀도가 특히 높다. 무엇보다 주인에 대한 충성심은 전 견종 통틀어 최상위권이다.
					    </div>
						<div class="clearfix"></div>
						<br>
						<br>
						<br>

		
				<div style="display:flex;" class="dogdic">
										<img class="img-responsive" src="web_page/images/dog13.jpg" />
										<p style="margin-left:10px;"> <strong> 견종 : 잉글리쉬 코카스파니엘 <br>모색 : 갈색, 황금색, 검은색 등 <br>활동량 : 많음 <br>털빠짐 : 많음 <br>키 : 38~41cm <br>무게 : 평균 13~15kg <br>지능 : 상 </strong> <br><br>특징 : 현재 잉글리시 코커 스파니엘, 아메리칸 코커 스파니엘 2종류로 나뉜다. 잉글리쉬 코커 스파니엘이 아메리카로 건너갔고,
											말보로계 스파니엘이 섞여 잉글리쉬 코커 스파니엘과는 다른, 아메리칸 코커 스파니엘이 되었다. 잉글리쉬  코카스파니엘
											은 사냥 능력이 뛰어나 아직도 사냥에 이용됨. 능동적이고 명랑하며 사람들과 장난치기를 좋아함. 훈련 적응도 높음. 하지
											만 통칭 3대 악마견 중 하나로 성격이 좋다고 할 수는 없다. 조금만 신경을 안써도 집 전체를 엉망으로 만들어 놓으며  그나
											마 지구력이 좋은편은 아니기 때문에 자주 놀아주거나 산책을 자주 시키면 지쳐서 말썽이 조금 덜해진다. 귀가 큰것이 특징
											이며 귀여운 외모를 가지고 있다.
										</div>
										<div class="clearfix"></div>
										<br>
										<br>
										<br>

				
				<div style="display:flex;" class="dogdic">
										<img class="img-responsive" src="web_page/images/dog14.jpg" />
										<p style="margin-left:10px;"> <strong> 견종 : 진돗개 <br>모색 : 갈색, 검은색, 호피색 등 <br>활동량 : 많음 <br>털빠짐 : 보통 <br>키 : 45~53cm <br>무게 : 평균 15~23kg <br>지능 : 상 </strong> <br><br>특징 : 이름에서 알 수 있듯이 원 서식지는 전남 진도군이며 삼살개, 풍산개 등과 함께 한국 고유의 품종이다. 진도군 내에서 심
											사를 받아 통과되면 진도개라는 이름으로 천연기념물로서 보호를 받게된다. 영리하고 귀소본능이 뛰어나며 주인에게 충
											성심 강한 개 주인에 대한 충성심과 복종심이 강하며 뛰어난 귀가성을 간직하고 있다. 첫 정을 준 주인을 오랫동안 잊지 
											못해 강아지 때부터 기르지 않고 성견을 구입했을 경우 탈주 사태가 일어난다. 대담하고 용맹스러우며, 한 번 물면 놓지 
											않는 지독한 근성을 가지고 있다. 낯선 사람을 경계하기 때문에 만지는 것을 좋아하지 않는다. 생김새는 겉털이 강하고 윤
											택하며, 얼굴에는 부드러운 털이 빽빽하고 꼬리의 털은 약간 길다. 털색은 황색 또는 백색이다. 얼굴은 정면에서 보면 거의
											팔각형에 가까운 형태를 보이며, 튼튼한 턱에 전체적인 인상은 다부지다.
									    </div>
										<div class="clearfix"></div>
										<br>
									    <br>
										<br>
										
										
			    <div style="display:flex;" class="dogdic">
										<img class="img-responsive" src="web_page/images/dog15.jpg" />
										<p style="margin-left:10px;"> <strong> 견종 : 샤페이 <br>모색 : 갈색, 검은색 <br>활동량 : 보통 <br>털빠짐 : 보통 <br>키 : 44~51cm <br>무게 : 평균 16~21kg <br>지능 : 중 </strong> <br><br>특징 : 중국 남부 광동지방이 원산지이다. 원래 이름은 차이니즈 샤페즈로 온몸에 쭈글쭈글한 주름이 인상적이다. 은 거칠고 짧으
											며 머리와 몸을 덮고 있는 가죽이 느슨하다. 귀는 작고 주둥이는 하마처럼 생겼으며 꼬리는 높은 위치에 자리잡아서 겉모
											습이 독특하다. 굴 표정은 찡그린 듯하다. 머리 모양은 뒤통수에서 콧구멍으로 내려오면서 약간 좁아지는 직사각형이다.유
											전적으로 눈꺼풀이 안으로 말려들어가 속눈썹이 안구를 찌르는 안검내반증이 있으며 이로 인해서 질병을 일으킬 수 있다. 
											또 태어날 때부터 피부에 주름이 많아 주름 사이에 피부병이 생기기도 한다. 성질은 독립적이고 붙임성이 있으며 매우 영
											리하다. 집을 잘 지킬 뿐만 아니라 주인을 충성스럽게 대한다.
										</div>
										<div class="clearfix"></div>
										<br>
										<br>
										<br>						


		</div>
		<div id="tabs-3">
		  
				<div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog16.jpg" />
						<p style="margin-left:10px;"> <strong>  견종 : 래브라도 리트리버 <br>모색 : 검은색, 노란색, 간장색, 초콜릿색 등 <br>활동량 : 많음 <br>털빠짐 : 보통 <br>키 : 54~57cm <br>무게 : 평균 23~34kg <br>지능 : 상 </strong> <br><br>특징 : 캐나다 뉴펀들랜드 주에서 만들어진 종으로 더 작고 낚싯배나 물새 사냥시에 더 날렵하게 활동할 수 있도록 교배되었다.  
							리트리버는 머리가 좋고 유난스럽지 않으며 주인의 기분을 잘 살핀다. 또한 인내심이 강하고 외향적이다. 적응력이 매우 
							뛰어난 견종이며 비교적 경계심이 많고 싸움을 피하지 않기 때문에 애완견이 아닌 번견으로서도 평가가 좋다. 신체능력만
							보자면 골든 리트리버들 보단  래브라도 리트리버가 선천적으로 근육량이 더 많고, 치악력도 상대적으로 더 큰 두개골 때
							문에 골든보다 한 수 위라고  알려져있다.
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
						<br>	
						
				<div style="display:flex;" class="dogdic">
					    <img class="img-responsive" src="web_page/images/dog17.jpg" />
					    <p style="margin-left:10px;"> <strong> 견종 : 저먼 셰퍼드 <br>모색 : 흑색, 황갈색, 다갈색 등 <br>활동량 : 많음 <br>털빠짐 : 많음 <br>키 : 55~65cm <br>무게 : 평균 22~40kg <br>지능 : 상 </strong> <br><br>특징 : 미국 영화나 드라마 속에서 경비견으로 사용되어 자주 볼 수 있는 저먼 셰퍼트. 제 1차 세계대전에서 독일군과 소
							련군에서 군견으로 활약했고 지능과 충성심이 매우 뛰어나다. 주인은 매우 잘 따르지만  낯선 사람에게는 경계심이 
							많아 어릴때부터 사회성을 길러주어야 함. 머리는 약간 둥그스름하고 주둥이는 길다. 귀는 삼각형으로 곧게 서 있
							다. 눈은 약간 처진 아몬드 모양이며 짙은 갈색이고 허리는 길이가 어깨높이보다 길다. 다리는 앞다리가 일직선이
							며, 뒷다리의 대퇴부의 폭이 넓고 힘이 세다. 꼬리는 긴 장식털로 덮여 있고, 앉을 때는 약간 둥글게 땅에 내려 놓는
							다. 영리하고 붙임성이 있으며 책임감이 강하다.
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
						<br>	

				<div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog18.jpg" />
					    <p style="margin-left:10px;"> <strong> 견종 : 골든 리트리버 <br>모색 : 황금색 <br>활동량 : 많음 <br>털빠짐 : 많음 <br>키 : 51~61cm <br>무게 : 평균 27~36kg <br>지능 : 상 </strong> <br><br>특징 : 짙은 황금색의 털을 가진 아름다운 개로, 찬 물 속에서도 견딜 수 있도록 긴 털이 많이 나 있고 앞발 뒤쪽에는 장식털이 나
							있다. 가슴이나 뒷발의 허벅지 뒤쪽, 꼬리의 아래쪽 면에도 털이 있다. 머리는 납작하고 넓으며 주둥이도 넓고 깊어 이지적
						   이며 부드러운 느낌을 준다. 성격이 온순하며 붙임성이 좋은데다 지능도 높아 가정견, 맹도견 등으로 유럽이나 미국, 일본
						   에서 인기가 있다. 무리한 훈련으로 경계심을 심어주면 얌전한 성격을 해치므로 번견으로서는 단념하는 것이 좋다. 이중모 
						   구조이기 때문에 봄에 속털이 빠지므로 털갈이 시기에 솔질을 자주 해주어야 한다. 몸집이 통통하고 귀가 작은 것이 좋으며
							꼬리는 뒷다리의 관절까지 늘어진 것이 좋다. 최근 과잉 번식으로 고관절에 이상이 있거나 지능이 떨어지는 개가 있으므로
							주의해야 한다. 
						</div>
					    <div class="clearfix"></div>
						<br>
						<br>
						<br>	

				<div style="display:flex;" class="dogdic">
					    <img class="img-responsive" src="web_page/images/dog19.jpg" />
						<p style="margin-left:10px;"> <strong> 견종 : 알래스카 말라뮤트 <br>모색 : 회색, 검은색, 붉은색 등 <br>활동량 : 많음 <br>털빠짐 : 많음 <br>키 : 58~63cm <br>무게 : 34~38kg <br>지능 : 중  </strong> <br><br>특징 : 원산지는 알래스카이며 기원과 조상이 확실하지는 않지만 러시아의 사모예드, 시베리아 허스키, 그린란드나 래브라도의
							개들과 조상이 같을 것으로 추정된다. 강인하고 골격이 튼튼하며 가슴이 넓다. 촘촘하고 굵은 이중 털은 늑대를 닮은 회색
							이거나 검은색이며, 흰색과 검은색이 섞여서 나기도 한다. 등은 일직선이며 허리쪽으로 경사가 진다. 귀는 바짝 서고 꼬리
							는 등쪽으로 말린다. 발은 눈에서도 잘 달릴 수 있도록 두껍고 털이 많이 난다. 수십 일씩 극지를 달리는 이디타로드 썰매
							경주와 극지방 탐험에서 지칠 줄 모르는 힘과 인내심으로 두각을 나타낸다. 사교성이 좋아 사람과 금방 친숙해지고, 성질
							은 온순하다. 운동량이 많아 집 밖에서 생활하는 것을 좋아하며 오랫동안 무리를 지어서 살아왔기 때문에 집안에서의 서열
							과 복종 훈련을 시키지 않으면 키우기 어렵다.
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
						<br>

				<div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog20.jpg" />
						<p style="margin-left:10px;"> <strong> 견종 : 사모예드 <br>모색 : 흰색 <br>활동량 : 많음 <br>털빠짐 : 많음 <br>키 : 53~57cm <br>무게 : 23~30kg <br>지능 : 상 </strong> <br><br>특징 : 시베리아 원산으로 썰매용·가정견·애완용으로 많이 기른다. 머리는 쐐기 모양이고, 눈은 어두운 색으로 깊이 우묵하며, 표
							정이 지적이다. 귀는 곧게 서고 끝이 둥글며, 몸통은 중간 정도의 길이로 늑골이 잘 발달되어 있다. 북부 시베리아의 북극
							권 가까운 곳에서 살았던 유목민인 사모예드족이 옛날부터 기르고 있던 썰매용 개로서, 부족의 이름을 따서 개 품종의 이름
							을 짓게 되었다. 같은 썰매견끼리의 공동생활 때문에 서열 정하기에 민감하고, 우호적, 개방적, 사교적인 성격이다. 우아한 
							용모와 대담한 성격, 썰매용으로 단련된 강력한 힘을 인정받아 세계에 널리 알려졌다. 
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
						<br>	
						
				<div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog21.jpg" />
						<p style="margin-left:10px;"> <strong> 견종 : 시베리안 허스키 <br>모색 : 검은색, 회색, 흰색 등 <br>활동량 : 많음 <br>털빠짐 : 많음 <br>키 : 51~60cm <br>무게 : 평균 16~28kg <br>지능 : 중 </strong> <br><br>특징 : 국내에는 영화 〈늑대개〉로 대중에게 많이 알려져서 일반인들은 흔히 늑대개라고 부른다. 시베리아에서 유목생활을 하던 척
							치(Chukchi)족에 의해 개발된 썰매를 끌던 개다. 단단한 근육과 균형 잡힌 몸매를 갖고 있는 늑대와 가장 닮은 품종이다. 두
							터운 털로 인해 더운 기후에는 적합하지 않다. 무엇보다 설원에 담고 있는 듯한 눈이 매력적인 품종이다. 하지만 외모와는 사
							뭇 다르게 느긋하고 온순한 성격을 갖고 있고 잘 짖지 않는다. 주인에게 뛰어난 충성심과 복종을 보이며, 인내와 끈기를 갖
							고 있으며, 적응력도 뛰어나다. 썰매를 끄는 사역견으로 활동량이 많이 요구되므로 충분한 운동을 시켜주어야 스트레스를
							예방할 수 있다. 
						</div>
						<div class="clearfix"></div>
					    <br>
					    <br>
						<br>	

				<div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog22.jpg" />
						<p style="margin-left:10px;"> <strong> 견종 : 도베르만 핀셔 <br>모색 : 검은색, 황금색, 청색, 황갈색, 붉은색 <br>활동량 : 많음 <br>털빠짐 : 보통 <br>키 : 63~72cm <br>무게 : 32~45kg <br>지능 : 상 </strong> <br><br>특징 : 독일 원산으로 사역견으로서는 셰퍼드와 비견할 수 있는 품종으로서 예민성 ·굳은 의지가 있으며, 행동력에서도 우수하다. 
							체격은 대형이며, 스마트하고 견고한 골격과 다부진 근육을 가지고 있다. 머리는 쐐기꼴이며, 몸통은 비교적 짧다. 꼬리와 귀
							는 짧은데, 보통 꼬리는 생후 일주일 이내에, 귀는 생후 2~4개월에 잘라준다. 조용하고 침척한 성격으로 어린 강아지 때에는 
							장난을 치기도 하고 반항을 종종 하는데 이것은 훈련을 통해 시정 되어야 한다. 대형견이므로 만일의 사태에 대비한 복종 훈
							련이 절대적으로 필요하다. 
						</div>
						<div class="clearfix"></div>
						<br>
						<br>
						<br>	

				<div style="display:flex;" class="dogdic">
						<img class="img-responsive" src="web_page/images/dog23.jpg" />
						<p style="margin-left:10px;"> <strong> 견종 : 세인트버나드 <br>모색 : 붉은색, 흰색 등 <br>활동량 : 보통 <br>털빠짐 : 보통 <br>키 : 65~90cm <br>무게 : 평균 50~90kg <br>지능 : 중 </strong> <br><br>특징 : 큰 머리와 힘이 강한 주둥이를 가지고 있으며 귀는 볼을 따라 늘어졌고 눈은 조금 앞을 향하여 있고 검은색이며, 골격은 튼
							튼하다. 털색깔은 변화가 심하며 대개 긴 털이 많으나 단모종도 있다. 이름은 스위스의 알프스산맥 생베르나르고개에서 주
							로 포도주통을 목에 걸고, 조난당한 등산객의 구조견으로 활약한 데서 유래되었는데, 그후 영국에 수입되어 훌륭한 품종으
							로 만들어졌다. 성질이 온순하고 영리하기 때문에 가정견이나 구조견으로 기르며, 또는 웅대한 것을 즐기는 관상견으로도 
							기른다. 성격은 천성적으로 다정하며 차분하면서도 활기차고 주의깊다.
						</div>
						<div class="clearfix"></div>
						<br>
					    <br>
						<br>	
														
		</div>
	  </div>
                 
          </div>
				</div>
			</div>       
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div style="width:1000px;" class="modal-dialog">
                     <div class="modal-content">         
                       <div class="modal-body">           
                              </div>
                     </div><!-- /.modal-content -->
                     <div class="clear"></div>
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->
                  <style>
                  </style>
                  <script>
                  $(document).ready(function(){        
                  $('li img').on('click',function(){
                     var word = "견종 : <br>크기 : <br>모색 : <br>털빠짐 : <br>활동량 : <br>키 : <br>무게 : <br>지능 : ";
                  var src = $(this).attr('src');
                  var img = '<div style="height:450px;" class="col-md-5"><img src="' + src + '"class="img-responsive"/></div><div class="col-md-7"><p style="font-size:2em;line-height:1.5;margin-right:30px">' + word +'</p></div>';
                  //start of new code new code
                  var index = $(this).parent('li').index();   
                  var html = '';
                  html += img;
                  html += '<div style="height:25px;clear:both;display:block;">';
                  html += '<a class="controls next" href="'+ (index+2) + '">next &raquo;</a>';
                  html += '<a class="controls previous" href="' + (index) + '">&laquo; prev</a>';
                  html += '<div style="height:25px;clear:both;display:block;">';
                  html += '</div>';
                  $('#myModal').modal();
                  $('#myModal').on('shown.bs.modal', function(){
                  $('#myModal .modal-body').html(html);
                  //new code
                  $('a.controls').trigger('click');
                  })
                  $('#myModal').on('hidden.bs.modal', function(){
                  $('#myModal .modal-body').html('');
                  });
                  });
                  })
                  //new code
                  $(document).on('click', 'a.controls', function(){
                  var index = $(this).attr('href');
                  var src = $('ul.row li:nth-child('+ index +') img').attr('src');             
                  $('.modal-body img').attr('src', src);
                  var newPrevIndex = parseInt(index) - 1; 
                  var newNextIndex = parseInt(newPrevIndex) + 2; 
                  if($(this).hasClass('previous')){               
                  $(this).attr('href', newPrevIndex); 
                  $('a.next').attr('href', newNextIndex);
                  }else{
                  $(this).attr('href', newNextIndex); 
                  $('a.previous').attr('href', newPrevIndex);
                  }
                  var total = $('ul.row li').length + 1; 
                  //hide next button
                  if(total === newNextIndex){
                  $('a.next').hide();
                  }else{
                  $('a.next').show()
                  }            
                  //hide previous button
                  if(newPrevIndex === 0){
                  $('a.previous').hide();
                  }else{
                  $('a.previous').show()
                  }
                  return false;
                  });
                  </script>
                  <div class="clearfix"></div>
               </div>
            </div>
         </div>
      <!--services-->
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