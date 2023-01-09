package com.smhrd.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/joinProgram")
public class joinProgram extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
	
		// System.out.println(id+pw+name);
		
		// Connection(conn), PreparedStatement(psmt), ResultSet(rs)
		Connection conn = null;
		PreparedStatement psmt = null;
		int cnt = 0;
		
		
		try {
			// 1. 동적로딩
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         
	         String url = "jdbc:oracle:thin:@localhost:1521:xe";
	         String db_id = "hr";
	         String db_pw = "hr";
			// 2. Connection 객체 생성  -> DataBase와 연동
	         conn = DriverManager.getConnection(url, db_id, db_pw);
			
			// 3. sql 작성 및 전송
	         String sql = "insert into webmember values(?, ?, ?)";
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, id);
	         psmt.setString(2, pw);
	         psmt.setString(3, name);
	         
	         cnt = psmt.executeUpdate();
	         System.out.println(cnt);
	         
		}catch(Exception e) {
			e.printStackTrace(); // 어떤 오류가 생겼는지 console창에 출력해줌
		}finally {
			// 4. 객체 닫아주기
			try {
				psmt.close();
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		if(cnt > 0) {
			// 회원가입 성공!
			response.sendRedirect("Main.html");
		}else {
			// 회원가입 실패
			response.sendRedirect("Join.html");
		}
	}

}
