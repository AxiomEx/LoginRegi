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

	<h1> 결과출력(result2.jsp 내용입니다.) </h1>
	<%
		request.setCharacterEncoding("utf-8");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
	%>
	
	<%
		if(user_id == null || user_id.length()==0){
	%>
		<p> 아이디를 입력해주세요. </p>
		<button id="homeBtn"> 홈으로 돌아가기 </button>
	<%
		} else{
	%>
		<p><%=user_id %> 로그인을 환영합니다. </p>
		<button id="homeBtn"> 홈으로 돌아가기 </button>
	<%
		}
	%>
	
	
	<script type="text/javascript" src="js/mine.js"> </script>
</body>
</html>