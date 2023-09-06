<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
<%


	//1,2
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	
	
	
	
	//3
	String animal = request.getParameter("animal"); // 강아지 또는 고양이
	
	//4
	String[] foodArr = request.getParameterValues("food");// 선택항목의 값이 여러개일때
	
	
	//5
	String fruit = request.getParameter("fruit");














%>
<table border=1>
	<tr>
	<th>별명</th>
	<td><%= nickname %></td>
	</tr>
	<tr>
	<th>취미</th>
	<td><%= hobby %></td>
	</tr>
	<tr>
	<th>선호하는 동물</th>
	<td><%= animal %></td>
	</tr>
	<tr>
	<th>선호하는 과일</th>
	<td><%= fruit %></td>
	</tr>
	<tr>
	<th>선호하는 음식</th>
	<td>
	<%
	// 피자,번데기,민트 초코
		if(foodArr != null){
		String result = "";

		for (String food : foodArr){
			result += food + ",";	
			
		}
		
		// 맨뒤에 붙은 곰마 제거
	    result = result.substring(0, result.length()-1);
		
		out.print(result);
		}
	%>
	</td>
	</tr>

</table>





</body>
</html>