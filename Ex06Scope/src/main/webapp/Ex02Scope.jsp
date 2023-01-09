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
	// pageContext객체영역 조회
	String getPage = (String)pageContext.getAttribute("pageContext");

	// request객체영역 조회
	String getRequest = (String)request.getAttribute("request");
	
	// session객체영역 조회
	String getSession = (String)session.getAttribute("session");
	
	// application객체영역 조회
	String getApp = (String)application.getAttribute("application");
%>

<h1> Ex02 Scope </h1>
pageContext : <%= getPage %><br>
request : <%= getRequest %><br>
session : <%= getSession %><!-- 브라우저만 같으면 값이 뜸 --><br>
application : <%= getApp %>
</body>
</html>