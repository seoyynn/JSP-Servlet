<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		session.invalidate();
	%>
	
	<script>
		alert("로그아웃말고 탈주는안되나요 흑흑")
		location.href="Ex08Loginform.jsp"
	</script>
	
</body>
</html>