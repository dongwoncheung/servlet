<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교보문고</title>
</head>
<body>
<%
List<Map<String, Object>> list = new ArrayList<>();
Map<String, Object> map = new HashMap<String, Object>() {
    { 
        put("id", 1000);
        put("title", "아몬드"); 
        put("author", "손원평"); 
        put("publisher", "창비");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1001);
        put("title", "사피엔스"); 
        put("author", "유발 하라리"); 
        put("publisher", "김영사");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1002);
        put("title", "코스모스"); 
        put("author", "칼 세이건"); 
        put("publisher", "사이언스북");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1003);
        put("title", "나미야 잡화점의 기적"); 
        put("author", "히가시노 게이고"); 
        put("publisher", "현대문학");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
    } 
};
list.add(map);
%>
<%
    String n1 = request.getParameter("id");
    if (n1 != null) {
        int bookId = Integer.parseInt(n1);
        Map<String, Object> selectedItem = null;
        
        
//--table에 보여줄 책 정보(target) 뽑아내기 
//Map<String, Object> target = new HashMap<>();

        for (Map<String, Object> item : list) {
            int itemId = (int) item.get("id");
            if (itemId == bookId) {
                selectedItem = item;
                break; 
            }
        }
        
        
        if (selectedItem != null) {
%>
<div class="container d-flex">
    <div>
        <img src="<%= selectedItem.get("image") %>" alt="표지" width="300">
    </div>

    <div>
        <h1><%= selectedItem.get("title") %></h1><!-- class="d-block" -->
        <h3><%= selectedItem.get("author") %></h3><!-- text-info -->
        <h2><%= selectedItem.get("publisher") %></h2><!-- text-secondary -->
    </div>
</div>
<%
        } else {
            // Handle case when book is not found
            out.print("Book not found");
        }
    }
%>


</body>
</html>