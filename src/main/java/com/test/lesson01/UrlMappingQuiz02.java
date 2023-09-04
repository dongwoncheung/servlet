package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz02 extends HttpServlet{
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		// 한글꺠짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		
		//포맷 정의 출력
		PrintWriter out = response.getWriter();
		out.print("현재 시간은 ");
		
		//시간생성
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("HH시mm분ss초 입니다.");
		out.print(sdf.format(now));
		
		
		
		
		
		
		
	}
}
