package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		// 한글 깨짐 방지 -> plain
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		// jason string 으로 한글 깨짐 방지
//		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/json");
		//request parameter
		String userId = request.getParameter("user_id");
		String name= request.getParameter("name"); // getparameter 는 html에서 요청을한것을 꺼내온다
		int age = Integer.valueOf(request.getParameter("age"));
		
		
		//출력
		PrintWriter out = response.getWriter();
		out.println("user_id:" + userId);
		out.println("name:" + name);
		out.println("age:" + age);
		// jason 으로 출력
		// {"user_id":"marobiana","name":"정동원","age":"29"}
//		out.print("{\"user_id\":\"" + userId + "\", \"name\":\""
//				+name + "\", \"age\":"+age + "}");
		
		
		
		
		
	}
}
