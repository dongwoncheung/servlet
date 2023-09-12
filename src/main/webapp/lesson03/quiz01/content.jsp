<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<table class="table text-center">
        <thead>
            <tr>
                <th>체널</th>
                <th>채널명</th>
                <th>카테고리</th>
            </tr>
        </thead>
        <tbody>
        <%
        String category = request.getParameter("category"); // 지상파

		for (Map<String, String> item : list) {
			// 카테고리가 null일 때(전체) 또는 카테고리명이 일치할 때
			if (category == null || item.get("category").equals(category)) {
        %>
        	<tr>
        	<td><%= item.get("ch") %></td>
        	<td><%= item.get("name") %></td>
        	<td><%= item.get("category") %></td>
        	</tr>
        <%
        	}
        }
        %>
        </tbody>