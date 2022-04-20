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

	<h1> 글 등록하기 </h1>

	<form action="boardRegistProcess.jsp" method='post' id='boardRegForm'> 
	
		글 제목 : <input type='text' name='bTitle' id='bTitle'> <br>
		글 내용 : <input type='text' name='bContent' id='bContent'> <br>
		작성자 : <input type='text' name='bWriter' id='bWriter'> <br>
		
		<input type='button' id='boardRegBtn' value='글 등록하기'>
		
	
	</form>

	
	<script type="text/javascript" src="js/mine.js"> </script>
</body>
</html>