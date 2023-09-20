<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<%--
1. 흐름: 회원가입-> sign upjsp(폼) 에서 시작 -> signupservlet(DB에 insert)-> redirect(302) -> /userList.jsp(유저목록) 
		->DB select가 들어간다
2. 회원삭제흐름: userlist.jsp(테이블) -> DeleteUserServlet(db delte) -> redirect(302)-> userList.jsp
 --%>
 	<form method="post" action="/lesson04/sign-up">
 		<p>
 			<b>이름</b>
 			<input type="text" name="name">
 		</p>
 		<p>
 			<b>생년월일</b>
 			<input type="text" name="yyyymmdd">
 		</p>
 		<p>
 			<b>이메일</b>
 			<input type="text" name="email">
 		</p>
 		<p>
 			<b>자기소개</b><br>
			<textarea name="introduce" rows="5" cols="50"></textarea>
 		</p>
 		
 		<input type="submit" value="회원가입">
 		
 	</form>
</body>

</html>