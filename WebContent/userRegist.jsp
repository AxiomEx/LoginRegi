<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/mine.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>

	<form id="userRegForm">
		
		<table border="1">
			<tr>
				<td> 아이디 </td>
				<td> <input type="text" name="user_id" id="user_id"> </td>
			</tr>
			
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="user_pw" id="user_pw"> </td>
			</tr>
			
			<tr>
				<td> 비밀번호 확인 </td>
				<td> <input type="password" name="user_re_pw" id="user_re_pw"> </td>
			</tr>
			
		</table>

			<input type="button" id="idCheckBtn" value="아이디 중복확인">
			<input type="submit" value="가입하기">
			<input type="button"  id="homeBtn" value="돌아가기">
			
		
	</form>

<script type="text/javascript" src="js/mine.js"> </script>
</body>
</html>