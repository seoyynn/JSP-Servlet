<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{text-align:center;}
</style>
</head>
<body>
	<div>
		<h1>메인페이지</h1>
		<br><br>
		<a href="Ex07subPage.jsp">서브 페이지로 이동</a>
		<br><br><br>
		<%@ include file="Ex07footer.jsp" %>
	</div>
</body>
</html>