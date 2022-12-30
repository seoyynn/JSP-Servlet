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
		/* post방식 인코딩 */
		request.setCharacterEncoding("utf-8");
		
		// 2. 데이터 받아오기
		String name = request.getParameter("name");
		
		// 점수데이터는 연산(평균)을 위해서 int형으로 변환
		int Java = Integer.parseInt(request.getParameter("Java"));
		int Python = Integer.parseInt(request.getParameter("Python"));
		int Web = Integer.parseInt(request.getParameter("Web"));
		int ML = Integer.parseInt(request.getParameter("ML"));
		
		// 3. 평균				
		int avg = (Java + Python + Web + ML)/4;
		
		// 4. 학점
		String sc = null;
		if(avg == 100){
		   sc = "A+";
		}else if(avg > 89){
		   sc = "A";
		}else if(avg > 79){
		   sc = "B";
		}else if(avg > 69){
		   sc = "C";
		}else{
		   sc = "D";
		}

	%>
	
	<!-- 5. Web에 출력하기 -->
	<fieldset>
      <legend> 학점 확인 프로그램 </legend>
         <table>
            <!-- 1행 -->
            <tr>
               <td>이름</td>
               <td><%=name %></td>
            </tr>
            <!-- 2행 -->
            <tr>
               <td>Java점수</td>
               <td><%=Java %></td>
            </tr>
            <!-- 3행 -->
            <tr>
               <td>Python점수</td>
               <td><%=Python %></td>
            </tr>
            <!-- 4행 -->
            <tr>
               <td>Web점수</td>
               <td><%=Web %></td>
            </tr>
            <!-- 5행 -->
            <tr>
               <td> ML점수</td>
               <td><%=ML %></td>
            </tr>
            <tr>
               <td> 평균</td>
               <td><%=avg %></td>
            </tr>
            <tr>
               <td> 학점</td>
               <td><%=sc %></td>
            </tr>
         </table>
   </fieldset>
</body>
</html>