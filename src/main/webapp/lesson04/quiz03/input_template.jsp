<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
    <head>
        <title>홍당무 마켓</title>
        <meta charset="utf-8">

	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
	<style>
	#wrap {
    width:1000px;
    margin:auto;
}

header {
    height:100px;
    background-color: coral;
}

header > .logo {
    width:300px;
    color:coral
}

nav {
    height:60px;
    background-color: coral;
}

nav > .nav-box {
    width:600px;
}

.main-link {
    
    font-size: 20px;
    color:white;
    font-weight: bold;
}

.main-link:hover {
    font-size: 20px;
    color:lightgray;
}


section > .input-box {
    width:600px;
}

.goods-box {
    border: 2px solid coral;
    padding:10px;
}

.goods-box:hover {
    background-color:#ffebe3;
}

.goods-box > .goods-image-box {
    width: 300px;
    height: 180px;
    overflow: hidden;
}

.goods-box > .title {
    font-size: 18px;
    font-weight: bold;
}

.goods-box > .price {
    color: gray;
}

.goods-box > .seller {
    font-size: 18px;
    color:coral;
}

footer {
    height:80px;
}
	
	
	</style>
    <body>

        <div id="wrap">
            <jsp:include page="header.jsp" />
	        <jsp:include page="input_content.jsp" /> 
	        <jsp:include page="footer.jsp" /> 
        </div>
    </body>

</html>