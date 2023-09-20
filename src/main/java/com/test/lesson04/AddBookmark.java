package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/add-bookmark")
public class AddBookmark extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		
		//request parameter
		String name = request.getParameter("name");
		String url = request.getParameter("url");
				
		//DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		
		//DB내용 insert -> 수행
		String insertQuery = "insert into `url`"
				+ "(`name`, `url`)"
				+ "values"
				+ "('" + name + "', '" + url + "')";
				
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		
		
		
		//DB연결 해제
		ms.disconnect();
		//redirect => 즐겨찾기 목록화면으로 이동
		response.sendRedirect("/lesson04/quiz02/bookmarkList.jsp");
		
	} 
	
}
