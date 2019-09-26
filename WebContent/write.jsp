<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="main.java.kr.mycom.jdbcexam.VO.UserVO" %>
<%@ page import="sun.misc.Request" %>
<jsp:include page="header.jsp" flush="true"></jsp:include>


<body>
	<%
		UserVO sessionMember = (UserVO) session.getAttribute("member");
		String userId = sessionMember.getId();
//		System.out.println("지금 로그인한사람 나야나"+userId);
//		request.setAttribute("userId",userId);
//		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/BbsServlet");
//		requestDispatcher.forward(request,response);
//		//System.out.println("이 아래까지는 안올거같고?");
	%>



	<!-- 게시판 -->
	<div class="about-pg">
	<h3>커뮤니티</h3>
	<div class="container">

		<div class="row">

			<form method="post" action="writeAction.jsp" >
				<table class="table table-striped"	style="text-align: center; border: 1px solid #dddddd">

					<thead>

						<tr>
							<th colspan="2"	style="background-color: #eeeeee; text-align: center;">게시글 작성</th>
						</tr>

					</thead>

					<tbody>

						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"/></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>

					</tbody>

				</table>

				<input type="submit" onclick="location='writesuccess.jsp'" class="btn btn-danger pull-right" value="등록" />
				<!-- <input type="submit" class="btn btn-primary pull-right" value="글쓰기 등록" onclick="location='writesuccess.jsp'"/> -->

			</form>

		</div>

	</div>
</div>

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

</body>

</html>