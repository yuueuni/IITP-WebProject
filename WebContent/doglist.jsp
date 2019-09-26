<%@ page import="main.java.kr.mycom.jdbcexam.VO.UserVO" %>
<%@ page import="main.java.kr.mycom.jdbcexam.VO.DogVO" %>
<%@ page import="java.util.List" %>
<%@ page import="main.java.kr.mycom.jdbcexam.DAO.DogDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<jsp:include page="header.jsp" flush="true"></jsp:include>

<body>
<%
    UserVO userVO = (UserVO) request.getAttribute("member");
    if (userVO != null) {
        session.setAttribute("member", userVO);
    }
%>

<!--header-->

<div class="main-content">
    <div class="container">

        <div class="m-content">
            <div class="about-pg">
            <h3 style="margin-bottom:30px;">우리 댕댕이 목록</h3>
            <%
                List<DogVO> list = (List<DogVO>)request.getAttribute("list");
                DogDAO dao = new DogDAO();
                List<DogVO> Doglist = dao.getDog();
                DogVO dogvo = new DogVO();
            %>



            <%

                if(Doglist != null){

                    for(int i=0;i<Doglist.size();i++){
                        dogvo = Doglist.get(i);
            %>

            <li class="list-group-item" style="margin-bottom: 10px; margin-left:380px; width:300px; " >
                <img src="web_page/images/4.jpg" class="img-circle"   float="left" alt="Cinque Terre" width="100" height="100"><br>
                댕댕이 이름 : <%= dogvo.getName()%><br>
                댕댕이 생일 : <%= dogvo.getAge()%><br>
                댕댕이 종: <%= dogvo.getBreed()%><br>
                댕댕이 사는곳 : <%= dogvo.getLocation()%><br>
                댕댕이 몸무게 : <%= dogvo.getWeight()%><br>
                <a href="dogmanaging.jsp">..더보기</a>
            </li>

            <%
                    }
                }

            %>
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