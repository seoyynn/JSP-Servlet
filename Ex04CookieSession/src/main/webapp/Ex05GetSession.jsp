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
		// 둘 다 object이기 때문에 String, int에 담기지 않아서 강제형변환(캐스팅)을 시켜줘야함
		String id = (String)session.getAttribute("id");
		Integer age = (Integer)session.getAttribute("age");
		
	%>
	
	아이디 : <%=id %><br>
	나이 : <%=age %>
	
	<a href="Ex06RemoveSession.jsp">세션삭제</a>
	<a href="Ex07InvalidateSession.jsp">세션모두삭제</a>
</body>
</html>