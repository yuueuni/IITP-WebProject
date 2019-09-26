
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<jsp:include page="header.jsp" flush="true"></jsp:include>

<body>


<!--header-->
<!--about-->
<div class="main-content">
    <div class="container">
        <div class="m-content">
            <div class="mainImg">
                <img style="width: 1100px;" src="web_page//images/main_2.jpg" alt="main" class="img-responsive">
            </div>
            <div class="mainTxt">
                <h1>로그아웃 성공.
                    다음에 또 만나요 ~ 멍</h1>
                <br>
            </div>
            <div class="mainBtn">


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