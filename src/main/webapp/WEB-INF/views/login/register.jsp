<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="/login/register" method ="post">
		아이디<input type="text" name="free_name"><br>
		비밀번호<input type="password" name="free_password"><br>
		주소<select name="main_address">
    			<option value="">--지역구를 선택하세요--</option>
			    <option value="서울">서울</option>
			    <option value="경기도">경기도</option>
			    <option value="부산">부산</option>
			    <option value="대구">대구</option>
			    <option value="인천">인천</option>
			    <option value="대전">대전</option>
			    <option value="광주">광주</option>
			    <option value="울산">울산</option>
			</select><br>
		상세주소<input type="text" name="detail_address"><br>
		주민등록번호<input type="text" name="juminNo"><br>
		자택전화번호<input type="text" name="homeNum"><br>
		모바일전화번호<input type="text" name="cellphone"><br>
		<input type="submit" value="등록확인"><br>
	</form>
</body>
</html>
