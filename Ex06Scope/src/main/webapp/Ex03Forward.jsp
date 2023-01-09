<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> forward 방식 </h1>
<ul>
	<li> 서버 내에서 이동해야할 페이지로 알아서 이동 </li>
	<li> 요청은 1번, request객체에 담긴 정보들이 유지가 된다 </li>
	<li> 요청이 1번이기때문에, 네트워크 트래픽이 발생하지 않아서 속도가 빠르다 </li>
	<li> request객체가 유지되기때문에 모든 타입(Object)의 데이터를 담을 수 있다 </li>
	<li> 서버내에서만 이동이 가능 </li>
	<li> 시스템에 변화가 생기지 않는 단순조회요청의 경우에 사용한다 </li>
</ul>

<% 
	// RequestDispatcher rd = request.getRequestDispatcher("http://www.naver.com");
	// rd.forward(request, response);
	
	
%>

<h1> sendRedirect방식 </h1>
<ul>
	<li> 이동해야할 페이지 주소를 응답해서, 해당 페이지를 요청할 수 있도록 함 </li>
	<li> 요청이 2번, 2번의 request객체는 서로 다른 객체이다. </li>
	<li> 데이터를 쿼리스트링 방식으로만 전송이 가능해서 Text형태 데이터만 전송가능 </li>
	<li> 요청이 2번이기때문에 네트워크 트래픽이 발생해서 실행속도가 느리다(상대적으로) </li>
	<li> 이동해야할 페이지를 새롭게 요청하는거라서 다른 서버의 페이지로 이동이 가능하다 </li>
	<li> 시스템에 변화가 생기는 회원가입, 글쓰기 요청일 때 사용한다 </li>
</ul>

<%
	response.sendRedirect("http://www.naver.com");
%>
</body>
</html>