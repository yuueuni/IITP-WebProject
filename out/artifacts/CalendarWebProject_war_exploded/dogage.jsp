<%--
  Created by IntelliJ IDEA.
  User: jeongheekim
  Date: 2019-08-25
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    //dog age to human
    //var humanage = 0;
    //var dogsize = document.getElementsByName("dogsize");
    //var dogage = 0;
    //var dogageresult = document.getElementById("dogageresult");

    request.setCharacterEncoding("UTF-8");
String dogsize = request.getParameter("dogsize");
    System.out.println(dogsize);
    response.setContentType("utf-8");
    response.getWriter().write(dogsize);
%>
<%=dogsize%>

</body>
</html>
