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
	// 현재 페이지 왔음을 console창에 출력
	System.out.println("Ex11sendRedirect 왔음!");

	// 현재 jsp를 중단하고, 네이버로 이동
	response.sendRedirect("http://www.naver.com");
%>
</body>
</html>