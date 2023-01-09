<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 입력받은 숫자 2개 받아와서 합을 구한 뒤 Ex06으로 전송 -->
<%
	Integer num1 = Integer.parseInt(request.getParameter("num1"));
	Integer num2 = Integer.parseInt(request.getParameter("num2"));
	
	// 합 구하기
	int sum = num1 + num2;
	
	// 결과값을 request객체에 담기
	request.setAttribute("sum", sum);
	
	// forward방식을 통해서 Ex06으로 전송
	// RequestDispatcher rd = request.getRequestDispatcher("Ex06.jsp");
	// rd.forward(request, response);
	
	// sendRedirect 방식으로 Ex06에 전송
	response.sendRedirect("Ex06.jsp?num1="+num1+"&num2="+num2+"&sum="+sum);
	
%>
</body>
</html>