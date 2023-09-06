


<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
<!-- 01 -->
<%!
	

	public int getSum(int n){
		int sum = 0;
		for(int i = 1; i <= n; i++){
			sum += i;
		}
		return sum;
	}
	


%>
<h2> 1부터 50까지의 합은 <%= getSum(50) %>입니다.</h2>

<!-- 02 -->

<%
		int[] scores = {80, 90, 100, 95, 80};
		double average = 0;
		int sum = 0;
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
			average = sum / (double)scores.length;
		}
%>
<h2> 평균점수는<%= average %>입니다.</h2>
<!-- 03 -->
<%
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
int score = 0;
for(int i =0; i < scoreList.size(); i++){
	
	if(scoreList.get(i).equals("O")){
		score += 100/scoreList.size();
	}
}
%>
<h2> 채점결과는<%= score %>입니다.</h2>
<!-- 04 -->	

<%
String birthDay = "20010820";
String year = birthDay.substring(0, 4); 
int age = 2023 - Integer.valueOf(year);

%>
<h2> 20010820의 나이는<%= age %>세입니다.</h2>
	 







</body>
</html>