package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter(); // 이부분이 있어야지 정식적으로 출력이 된다
		out.print("오늘의 날짜는");
		// 날짜객체
		Date now = new Date();
		// format출력
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 dd일");
		out.print(sdf.format(now));
		
		
	}
	
	
	
}
