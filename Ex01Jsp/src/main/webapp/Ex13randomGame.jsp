<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
	<legend> 랜덤 당첨 작성 </legend>
	<form action="Ex13randomResult.jsp" method="post">
		<table>
			<tr>
				<td>주제 : </td>
				<td><input type="text" name="sub"></td>
			</tr>
			<%
				int rannum = Integer.parseInt(request.getParameter("num"));
				for (int i = 1; i <= rannum; i++) {
			%>
			<tr><td>아이템<%=i%>:</td> <td><input type="text" name="item"></td></tr>
			<%
				}
			%>
			<tr>
				<td colspan="2"><input type="submit" value="생성하기"></td>
			</tr>
		</table>
	</form>
</fieldset>
</body>
</html>