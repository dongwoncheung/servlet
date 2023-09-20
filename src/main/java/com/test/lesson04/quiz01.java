package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class quiz01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		// 응답을 plain
		response.setContentType("text/plain");
		//DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // ☆실질적인 DB연결(꼭 넣어야됨)☆
		//DB  인서트 
		String insertQuery = "insert into `real_estate`"
				+ "(`realtorId`, `address`, `area`, `type`, `price`)"
				+ "values"
				+ "(3,'헤라펠리스 101동 5305호', 350, '매매', 1500000)";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//DB 셀렉트 & 출력
		PrintWriter out = response.getWriter();
		String selectQuery ="select`address`, `area`, `type` from `real_estate` order by `id` desc limit 10";
		try {
			ResultSet res = ms.select(selectQuery);
			while(res.next()) {// 결과 행이 있는 동안 계속 수행
				String address = res.getString("address");
				int area = res.getInt("area");
				String type = res.getString("type");
				out.println("매물주소:" + address + "," + "면적:" + area + ", 타입:" + type);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		//DB연결 해제
		ms.disconnect();
	}
}
