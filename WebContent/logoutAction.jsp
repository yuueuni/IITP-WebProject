<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>DOGUMENT</title>

</head>

<body>
여기 로그아웃 화면이얌.

	<%

		session.invalidate(); // 접속한 회원의 세션을 빼앗음

	%>



	<script>	//메인으로 이동

		location.href = 'SuccessLogout.jsp';

	</script>



</body>

</body>

</html>