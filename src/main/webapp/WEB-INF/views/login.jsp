
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="login" method ="post">
		아이디<input type="text" name="free_name"><br>
		비밀번호<input type="password" name="free_password"><br>
		<input type="submit" value="로그인"><br>
	</form>
	<button type="button" onclick="location.href='../login/register'">회원가입하기</button>
</body>
</html>