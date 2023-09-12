<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교보 문고</title>
<!--부트스트랩-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!--cdm-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>	
</head>
<body>
	<div class="container text-center">
	<h3>책 목록</h3>
	<table class="table">
		
			<thead>
			<%--row 클래스 를 설정하면 12칸 기준으로 칸영역을 잡을수있다. --%>
            <tr class="row">
                <th class="col-1">id</th>
                <th class="col-2">표지</th>
                <th class="col-9">제목</th>
            </tr>
        </thead>
        <tbody>
        	<tr>
                <td>1000</td>
                <td><a href="http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg"></a></td>
                <td><a href="/lesson02/quiz08_1.jsp?id=1000">아몬드</td>
            </tr>
            <tr>
                <td>1001</td>
                <td><a href="http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg"></a></td>
                <td><a href="/lesson02/quiz08_1.jsp?id=1001">사피엔스</td>
            </tr>
        	<tr>
                <td>1002</td>
                <td><a href="http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg"></a></td>
                <td><a href="/lesson02/quiz08_1.jsp?id=1002">코스모스</td>
            </tr>
        	<tr>
                <td>1003</td>
                <td><a href="http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg"></a></td>
                <td><a href="/lesson02/quiz08_1.jsp?id=1003">나미야 잡화점의 기적</td>
            </tr>
        </tbody>
		
		
	
	
	</table>
</div>






</body>
</html>