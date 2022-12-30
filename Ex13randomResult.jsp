<%@page import="java.util.Random"%>
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
	request.setCharacterEncoding("UTF-8");
	
	String sub = request.getParameter("sub");
	String[] item = request.getParameterValues("item");
	Random rd = new Random();
%>
<fieldset>
	<legend> 랜덤 당첨 결과 </legend>
		<table>
			<tr>
				<td>주제 : </td>
				<td><%=sub %></td>
			</tr>
			<tr>
				<td>결과 : </td>
				<td><%=item[rd.nextInt(item.length)] %></td>
			</tr>
		</table>
</fieldset>
</body>
</html> 장서연 제발 좀 그만 떠들어 혼난다!? -이도여-