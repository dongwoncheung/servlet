<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp</title>
</head>
<body>
	<!-- html 주석: source보기에서 보인다 -->
	<%--jsp의 주석:source보기에서 보이지 않는다 --%>
	
<%
	// 자바의 주석
	// 스크립틀릿(scriptlet) - main함수 같은 느낌
	int sum =0;
	for(int i =1; i <= 10; i++){
		sum += i;
	}
	
	List<String> list = List.of("a", "b", "c");
	
	
%>
<%--<%= %>:expression --%>

<b>합계:<%= sum %></b>
<input type="text" value="<%= sum %>">
<%!
	//선언문 - 클래스 같은 느낌
	
	//filed
	private int num = 100;
	
	//method
	public String getHelloWorld(){
		return "hello world";
	}
%>
<%= getHelloWorld() %>
<br>
<%= num + 200%>

	
</body>
</html>