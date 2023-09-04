package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException { {
		//한글꺠짐 html컨탠트 타입만이라고 명심해서 코드에 넣어주기
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
				
		//request params
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		//출력
		PrintWriter out = response.getWriter();
		out.print( "<html><head><title>입사정보</title></head><body>" 
		+"<b>" + name  + "</b>"+ "님의 지원이 완료 되었습니다." + "<br>");		
		out.print("<h3>지원내용</h3>" + "<br>");		
		out.print(introduce);
		out.print("</body></html>");
	}
}
}