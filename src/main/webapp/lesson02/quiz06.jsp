<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>장보기 목록</title>
</head>
<body>
<div class="container">
    <h1>장보기 목록</h1>
    <table border="1">
        <thead>
            <tr>
                <th>번호</th>
                <th>품목</th>
            </tr>
        </thead>
        <tbody>
            <%
            List<String> goodsList = Arrays.asList(
                "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
            );

            for (int i = 0; i < goodsList.size(); i++) {
                String good = goodsList.get(i);
            %>
            <tr>
                <td><%= i + 1 %></td>
                <td><%= good %></td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
</div>    
</body>
</html>