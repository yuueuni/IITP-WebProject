<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


    

<% 
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = null;

	Statement stmt = null;
	ResultSet rs = null;

	String sql = "select * from calendar";

	try {

		String url = "jdbc:mysql://localhost:3306/calendar?" + "useUnicode=true&characterEncoding=utf8";
		String user = "root";
		String pw = "user";
		conn = DriverManager.getConnection(url, user, pw);

		if (conn != null) {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
%>

아이디 :<%=rs.getString("id")%>
<br>
주소 :
<%=rs.getString("name")%>

<hr>

<%
	} //while
		} //if

	} finally {
		if (rs != null)
			try {
				rs.close();
			} catch (Exception e) {
			}
		if (stmt != null)
			try {
				stmt.close();
			} catch (Exception e) {
			}
		if (conn != null)
			try {
				conn.close();
			} catch (Exception e) {
			}
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>




