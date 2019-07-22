<%--
  Created by IntelliJ IDEA.
  User: jeongheekim
  Date: 2019-07-21
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class = "add_calendar">
    <p>댕댕이 입력정보 카테고리를 선택후 횟수를 추가해주세요~</p>

    <form action="/Logic" method="get">
        <select  name ="name">
            <option value="walk">산책</option>
            <option value="snack">간식</option>
            <option value="toilet">배변</option>
        </select>

        <input type="text" name ="dogcount" placeholder="입력한 횟수를 적어주세요">
        <br><br>
        <input type="submit" value="등록">
    </form>


</div>

</body>
</html>
